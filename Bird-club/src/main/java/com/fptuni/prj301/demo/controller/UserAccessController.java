package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.UserAccessManager;
import com.fptuni.prj301.demo.model.UserSession;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tool.utils.Mailer;
import tool.utils.UIDGenerator;

import static tool.utils.UIDGenerator.generateNewPassword;

public class UserAccessController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String path = request.getPathInfo();
        System.out.println(path);

        if (path != null && path.equals("/login")) {
            System.out.println("Path: " + path);
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            HttpSession ss = request.getSession(true);

            if (username == null || password == null) {
                response.sendRedirect(request.getContextPath() + "login.jsp");
            } else {

                UserAccessManager userDao = new UserAccessManager();
                UserSession user = userDao.searchByName(username);

                if (user == null || !password.equals(user.getPassword())) {
                    // Invalid username or password
                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                    request.setAttribute("login_msg", "Username does not Exists");
                } else {
                    String role = user.getRole().trim();
                    String status = user.getStatus().trim();

                    if (status.equals("unactivated")) {
                        response.sendRedirect(request.getContextPath() + "/login.jsp");
                        request.setAttribute("login_msg", "Username does not Exists");
                    } else {
                        if (role.equals("member")) {
                            ss.setAttribute("users", user);
                            ss.setAttribute("userID", userDao.searchByName(user.getUserName()));
                            response.sendRedirect(request.getContextPath() + "/member_homepage.jsp");
                        } else if (role.equals("staff")) {
                            response.sendRedirect(request.getContextPath() + "/staff_homepage.jsp");
                        } else {
                            response.sendRedirect(request.getContextPath() + "/guest_homepage.jsp");
                        }
                    }
                }
            }
        } else if (path != null && path.equals("/logout")) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            response.sendRedirect(request.getContextPath() + "/guest_homepage.jsp");
        }
        if (path != null && path.equals("/signup")) {
            HttpSession ss = request.getSession(true);
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String cpassword = request.getParameter("confirmPassword");
            String fullName = request.getParameter("fullName");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");

            // Check if username or email already exists
            UserAccessManager userDao = new UserAccessManager();
            boolean isUserExists = userDao.checkUserExists(username);

            if (isUserExists) {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
                request.setAttribute("signup_msg", "Username Exists, Signup Fails");
                return;
            } else if (!password.equals(cpassword)) {
                response.sendRedirect(request.getContextPath() + "/login.jsp");
                request.setAttribute("signup_msg", "Password and Confirm Password do not match");
                return;
            } else {
                // Create a UserSession object with the signup details
                UserSession user = new UserSession();
                user.setUserName(username);
                user.setPassword(password);
                user.setFullName(fullName);
                user.setPhone(phone);
                user.setEmail(email);
                user.setGender(gender);
                user.setStatus("activated");

                // Generate UID
                String userId = UIDGenerator.generateUID();
                user.setUserId(userId);

                // Set the signup and expired dates
                Date signupDate = new Date();
                user.setSignUpDate(signupDate);
                // Set the expired date (e.g., 30 days from signup)
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(signupDate);
                calendar.add(Calendar.DAY_OF_MONTH, 30);
                Date expiredDate = calendar.getTime();
                user.setExpriedDate(expiredDate);

                // Call the DAO to add the user to the database
                boolean success = userDao.SignUp(user);
                ss.setAttribute("users", user);

                if (success) {
                    
                    response.sendRedirect(request.getContextPath() + "/MemberShipController?action=view");
                } else {
                    response.sendRedirect(request.getContextPath() + "/EventDetails.jsp");
                }
            }
        }
        if (path != null && path.equals("/forgot")) {
            String email = request.getParameter("email");

            if (email != null) {
                UserAccessManager userDao = new UserAccessManager();
                String newPassword = generateNewPassword();

                // Update the password in the database based on the email
                boolean passwordUpdated = userDao.updatePasswordByEmail(email, newPassword);

                if (passwordUpdated) {
                    // Send an email with the new password
                    String subject = "Bird Club - Password Reset";
                    String message = "Your password has been updated. Your new password is: " + newPassword;
                    String senderEmail = "fptswp@gmail.com";
                    String senderPassword = "fijqfrjphrrkenna";

                    Mailer.send(senderEmail, senderPassword, email, subject, message, "http://localhost:8080/chimowners/login.jsp");

                    // Redirect to the login page
                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                } else {
                    // Password update failed
                    response.sendRedirect(request.getContextPath() + "/forgot.jsp");
                    request.setAttribute("forgot_msg", "Failed to update password. Please try again.");
                }
            } else {
                // If email is null, redirect back to the forgot password page with an error message
                response.sendRedirect(request.getContextPath() + "/forgot.jsp");
                request.setAttribute("forgot_msg", "Please provide a valid email address");
            }
        }

    }

    // Handle GET requests
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    // Handle POST requests
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


}
