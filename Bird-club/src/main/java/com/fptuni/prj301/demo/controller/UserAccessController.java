package com.fptuni.prj301.demo.controller;

import com.fptuni.prj301.demo.dbmanager.StaffAccountManager;
import com.fptuni.prj301.demo.dbmanager.UserAccessManager;
import com.fptuni.prj301.demo.model.UserSession;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import tool.utils.UIDGenerator;

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

            if (username == null || password == null) {
                response.sendRedirect(request.getContextPath() + "/EventDetails.jsp");
            } else {
                UserAccessManager userDao = new UserAccessManager();
                UserSession user = userDao.searchByName(username);

                if (user == null || !password.equals(user.getPassword())) {
                    // Invalid username or password
                    response.sendRedirect(request.getContextPath() + "/EventDetails.jsp");
                } else {
                    String role = user.getRole().trim();
                    String status = user.getStatus().trim();

                    if (status.equals("unactive")) {
                        response.sendRedirect(request.getContextPath() + "/EventDetails.jsp");
                    } else {
                        if (role.equals("member")) {
                            response.sendRedirect(request.getContextPath() + "/member_homepage.jsp");
                        } else if (role.equals("staff")) {
                            response.sendRedirect(request.getContextPath() + "/staff_homepage.jsp");
                        } else {
                            response.sendRedirect(request.getContextPath() + "/Footer.jsp");
                        }
                    }
                }
            }
        }
        if (path != null && path.equals("/signup")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
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
            } else {
                // Create a UserSession object with the signup details
                UserSession user = new UserSession();
                user.setUserName(username);
                user.setPassword(password);
                user.setFullName(fullName);
                user.setPhone(phone);
                user.setEmail(email);
                user.setGender(gender);
                user.setStatus("unactive"); // Set the initial status as unactive

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

                if (success) {
                    response.sendRedirect(request.getContextPath() + "/member_homepage.jsp");
                } else {
                    response.sendRedirect(request.getContextPath() + "/EventDetails.jsp");
                }
            }
        }
        

    }

    public static void main(String[] args) {
        StaffAccountManager staffAccountManager = new StaffAccountManager();
        List<UserSession> userList = staffAccountManager.getUsersWithUnactiveStatus();

        // Print the list of users with inactive status
        System.out.println("Users with inactive status:");
        for (UserSession user : userList) {
            System.out.println(user.getUserName());
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
