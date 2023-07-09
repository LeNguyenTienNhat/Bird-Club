package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.StaffAccountManager;
import com.fptuni.prj301.demo.dbmanager.UserAccessManager;
import com.fptuni.prj301.demo.model.UserSession;
import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import tool.utils.DBgenerator;
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
            String password = request.getParameter("password").trim();
            HttpSession ss = request.getSession(true);

            if (username == null || password == null) {
                response.sendRedirect(request.getContextPath() + "login.jsp");
            } else {

                UserAccessManager userDao = new UserAccessManager();
                UserSession user = userDao.searchByName(username);
                StaffAccountManager s = new StaffAccountManager();
                if (user == null || !password.equals(user.getPassword().trim())) {
                    // Invalid username or password
                    response.sendRedirect(request.getContextPath() + "/login.jsp");
                    request.setAttribute("login_msg", "Wrong password");
                } else {
                    String role = user.getRole().trim();
                    String status = user.getStatus().trim();

                    if (status.equals("unactivated")) {
                        ss.setAttribute("users", user);
                        response.sendRedirect(request.getContextPath() + "/MemberShipController?action=view");
                    } else if (user.getExpriedDate() != null && user.getExpriedDate().before(new Date())) {
                        ss.setAttribute("users", user);
                        ss.setAttribute("userID", userDao.searchByName(user.getUserName()));
                        boolean account = s.approveUser(user.getUID(), "guest");
                        response.sendRedirect(request.getContextPath() + "/home?action=view");
                        request.setAttribute("login_msg", "Membership has expired");
                    } else {
                        if (role.equals("member") || role.equals("guest")) {
                            ss.setAttribute("users", user);
                            ss.setAttribute("userID", userDao.searchByName(user.getUserName()));
                            response.sendRedirect(request.getContextPath() + "/home?action=view");
                        } else if (role.equals("staff")) {
                            ss.setAttribute("users", user);
                            response.sendRedirect(request.getContextPath() + "/staffhome");
                        }
                    }
                }
            }
        } else if (path != null && path.equals("/logout")) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            response.sendRedirect(request.getContextPath() + "/home?action=view");
        } else if (path != null && path.equals("/signup")) {
            HttpSession ss = request.getSession(true);
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String cpassword = request.getParameter("confirmPassword");
            String fullName = request.getParameter("fullName");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            DBgenerator d = new DBgenerator();
            byte[] profilePic = d.generateProfilePictureByteArray("D:\\gt\\Bird-Club\\Bird-club\\src\\main\\webapp\\media\\user.png");
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
                user.setStatus("unactivated");
                user.setMID("MID00");
                user.setRole("guest");
                user.setImage(profilePic);

                // Generate UID
                String userId = UIDGenerator.generateUID();
                user.setUID(userId);

                // Set the signup and expired dates
                Date signupDate = new Date();
                user.setSignUpDate(signupDate);

// Set the expired date (same as signup date)
                user.setExpriedDate(signupDate);
                // Call the DAO to add the user to the database
                boolean success = userDao.SignUp(user);

                if (success) {
                    ss.setAttribute("users", user);
                    response.sendRedirect(request.getContextPath() + "/MemberShipController?action=view");
                } else {
                    response.sendRedirect(request.getContextPath() + "/error.html");
                }
            }
        } else if (path != null && path.equals("/forgot")) {
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
