<%-- 
    Document   : member_header
    Created on : Jun 11, 2023, 6:17:21 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header id="main-nav-header">
            <div id="header-wrapper" style=" padding: 10px; justify-content: flex-end; display: flex; width: 100%">
                <a href="member_homepage.jsp">
                    <img src="https://www.bird.club/assets/logo/logo-312ed022e9e8abb1fcfcdfd5eaa3fd93fb11e7d70d4eef74149a7ba17c311e71.png" alt="BirdClub logo" width="150" height="49">
                </a>
                <div class="grid-container top-bar">
                    <div class=" grid-x align-middle logos">
                    </div>
                </div>   

                <div class="website-header-container grid-container ">                      
                    <div class="grid-x header-content persistent-nav main-nav align-bottom nav-column">
                        <div class=" website-nav-container small-12">                  
                            <nav class="grid-x website-nav hide-for-print" aria-label="Primary">
                                <div id="primary-nav-container">   
                                    <ul id="primary-nav" class="dropdown menu">
                                        <li id="nav-menu-item-41114" class="birds guide-active menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/home?action=view" class="menu-link main-menu-link">Home</a></li>
                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/StaffAccountController?action=viewlist"  class="menu-link main-menu-link">Tournament</a></li>
                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/StaffAccountFTController?action=viewfieldtrip&page=1" class="menu-link main-menu-link">Field trip</a></li>
                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/StaffAccountMTController?action=viewmeeting" class="menu-link main-menu-link">Meeting</a></li>
                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/news?action=view" class="menu-link main-menu-link">News</a></li>
                                        <li id="nav-menu-item-41129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" class="menu-link main-menu-link">Community</a><button aria-haspopup="true" aria-label="Show submenu for Courses"><span class="fa fa-chevron-down" aria-hidden="true"></span></button>
                                            <ul class="sub-menu hidden menu-odd  menu-depth-1" aria-hidden="true">
                                                <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="${pageContext.request.contextPath}/BlogController?actionviewblog" class="menu-link sub-menu-link">Blogs</a></li>
                                                <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="${pageContext.request.contextPath}/TransactionController?action=location" class="menu-link sub-menu-link">Locations</a></li></ul>

                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/Gallery?action=view" class="menu-link main-menu-link">Gallery</a></li>


                                        <li id="nav-menu-item-41129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children">
                                            <c:choose>
                                                <c:when test="${not empty users}">
                                                    <a target="_self" href="${pageContext.request.contextPath}/MemberProfileController?action=view" class="menu-link main-menu-link">
                                                        <img src="data:image/png;base64,${Base64.getEncoder().encodeToString(users.getImage())}" alt="Avatar" style="object-fit: cover; width: 30px; height: 30px; border-radius: 50%;">
                                                        <span class="username">${users.getUserName()}</span>
                                                    </a>
                                                    <button aria-haspopup="true" aria-label="Show submenu for Courses">
                                                        <span class="fa fa-chevron-down" aria-hidden="true"></span>
                                                    </button>
                                                </c:when>
                                                <c:otherwise>
                                                    <a target="_self" href="login.jsp" class="menu-link main-menu-link">Login</a>
                                                </c:otherwise>
                                            </c:choose>
                                            <ul class="sub-menu hidden menu-odd menu-depth-1" aria-hidden="true">
                                                <li id="nav-menu-item-41702" class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a target="_self" value="${users.getUID()}" href="${pageContext.request.contextPath}/BirdController?action=viewbirdprofile&UID=${users.getUID()}" class="menu-link sub-menu-link">My bird</a>
                                                </li>
                                                <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a target="_self" href="${pageContext.request.contextPath}/MemberShipController?action=view" class="menu-link sub-menu-link">Membership</a>
                                                </li>
                                                <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a target="_self" href="member_FeedBack.jsp" class="menu-link sub-menu-link">Feedback</a>
                                                </li>
                                                <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom">
                                                    <a target="_self" href="${pageContext.request.contextPath}/MemberShipController?action=donate" class="menu-link sub-menu-link">Donation</a>
                                                </li>
                                                <c:choose>
                                                    <c:when test="${not empty users and not empty users.UID}">
                                                        <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom">
                                                            <a target="_self" href="${pageContext.request.contextPath}/UserAccessController/logout" class="menu-link sub-menu-link">Log out</a>
                                                        </li>
                                                    </c:when>
                                                </c:choose>
                                            </ul>
                                        </li>

                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div></div>
    </body>
</html>

