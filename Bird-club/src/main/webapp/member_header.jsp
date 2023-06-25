<%-- 
    Document   : member_header
    Created on : Jun 11, 2023, 6:17:21 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header id="main-nav-header">
           <div id="header-wrapper" style="margin-left: 80px; justify-content: flex-end; display: flex;">
         <img  alt="BirdClub logo" srcset="https://www.bird.club/assets/logo/logo@2x-956290beed33ed2841b61b3f880995d6c6951252a264e6615c7338a75336109e.png 2x, https://www.bird.club/assets/logo/logo@4x-fd2728b28bda915145a696aa1dd9344b6b1211bce8a3d93ece4a28683fbe4d88.png 4x" src="https://www.bird.club/assets/logo/logo-312ed022e9e8abb1fcfcdfd5eaa3fd93fb11e7d70d4eef74149a7ba17c311e71.png" width="150" height="49";>
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
                                        <li id="nav-menu-item-41114" class="birds guide-active menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/member_homepage.jsp" class="menu-link main-menu-link">Home</a></li>
                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/StaffAccountController?actionviewlist"  class="menu-link main-menu-link">Tournament</a></li>
                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/StaffAccountFTController?actionviewfieldtrip" class="menu-link main-menu-link">Field trip</a></li>
                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/StaffAccountMTController?actionviewmeeting" class="menu-link main-menu-link">Meeting</a></li>
                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="${pageContext.request.contextPath}/news?action=view" class="menu-link main-menu-link">News</a></li>
                                        <li id="nav-menu-item-41129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" class="menu-link main-menu-link">Community</a><button aria-haspopup="true" aria-label="Show submenu for Courses"><span class="fa fa-chevron-down" aria-hidden="true"></span></button>
                                            <ul class="sub-menu hidden menu-odd  menu-depth-1" aria-hidden="true">
                                                <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="${pageContext.request.contextPath}/BlogController?actionviewblog" class="menu-link sub-menu-link">Blogs</a></li>
                                                <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom"><a target="_self" href="member_locations.jsp" class="menu-link sub-menu-link">Locations</a></li></ul>

                                        <li id="nav-menu-item-41123" class="cams menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children"><a target="_self" href="member_gallery.jsp" class="menu-link main-menu-link">Gallery</a></li>


                                        <li id="nav-menu-item-41129" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children">
    <a target="_self" href="${pageContext.request.contextPath}/MemberProfileController?action=view" class="menu-link main-menu-link">
        <img src="${users.getAvatar()}" alt="Avatar" class="avatar-image">
        <span class="username">${users.getUserName()}</span> 
    </a>
    <button aria-haspopup="true" aria-label="Show submenu for Courses">
        <span class="fa fa-chevron-down" aria-hidden="true"></span>
    </button>
    <style>
        .avatar-image {
  max-width: 30px; /* Adjust the value as needed */
  max-height: 30px; /* Adjust the value as needed */
}
    </style>
    <ul class="sub-menu hidden menu-odd menu-depth-1" aria-hidden="true">
        <li id="nav-menu-item-41702" class="menu-item menu-item-type-custom menu-item-object-custom">
            <a target="_self" href="member_BirdList.jsp" class="menu-link sub-menu-link">My bird</a>
        </li>
        <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom">
            <a target="_self" href="${pageContext.request.contextPath}/MemberShipController?action=view" class="menu-link sub-menu-link">Membership</a>
        </li>
        <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom">
            <a target="_self" href="member_Feedback.jsp" class="menu-link sub-menu-link">Feedback</a>
        </li>
        <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom">
            <a target="_self" href="vnpay_pay.jsp" class="menu-link sub-menu-link">Donation</a>
        </li>
        <li id="nav-menu-item-41703" class="menu-item menu-item-type-custom menu-item-object-custom">
            <a target="_self" href="${pageContext.request.contextPath}/UserAccessController/logout" class="menu-link sub-menu-link">Log out</a>
        </li>
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

