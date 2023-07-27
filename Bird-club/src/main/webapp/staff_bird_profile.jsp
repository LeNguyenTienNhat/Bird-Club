<%@page import="com.fptuni.prj301.demo.model.UserSession"%>
<%@page import="com.fptuni.prj301.demo.model.Tparticipation"%>
<%@page import="com.fptuni.prj301.demo.model.Bird"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="h-full bg-gray-100">
<head><style type="text/css" data-tag-name="trix-editor">trix-editor {
    display: block;
}

trix-editor:empty:not(:focus)::before {
    content: attr(placeholder);
    color: graytext;
    cursor: text;
    pointer-events: none;
    white-space: pre-line;
}

trix-editor a[contenteditable=false] {
    cursor: text;
}

trix-editor img {
    max-width: 100%;
    height: auto;
}

trix-editor [data-trix-attachment] figcaption textarea {
    resize: none;
}

trix-editor [data-trix-attachment] figcaption textarea.trix-autoresize-clone {
    position: absolute;
    left: -9999px;
    max-height: 0px;
}

trix-editor [data-trix-attachment] figcaption[data-trix-placeholder]:empty::before {
    content: attr(data-trix-placeholder);
    color: graytext;
}

trix-editor [data-trix-cursor-target] {
    display: inline-block !important;
    width: 1px !important;
    padding: 0 !important;
    margin: 0 !important;
    border: none !important;
}

trix-editor [data-trix-cursor-target=left] {
    vertical-align: top !important;
    margin-left: -1px !important;
}

trix-editor [data-trix-cursor-target=right] {
    vertical-align: bottom !important;
    margin-right: -1px !important;
}</style><style type="text/css" data-tag-name="trix-toolbar">trix-toolbar {
  display: block;
}

trix-toolbar {
  white-space: nowrap;
}

trix-toolbar [data-trix-dialog] {
  display: none;
}

trix-toolbar [data-trix-dialog][data-trix-active] {
  display: block;
}

trix-toolbar [data-trix-dialog] [data-trix-validate]:invalid {
  background-color: #ffdddd;
}</style><style type="text/css">.turbo-progress-bar {
  position: fixed;
  display: block;
  top: 0;
  left: 0;
  height: 3px;
  background: #0076ff;
  z-index: 9999;
  transition:
    width 300ms ease-out,
    opacity 150ms 150ms ease-in;
  transform: translate3d(0, 0, 0);
}
</style>
  <title>Bird details</title>
  <meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token" content="qEabwlFczt6Y6aOS8sqS9dqsquL7hxeLo0dN7xdEpI_Bgcp73HQpWYrPgCgrvE2pCkkRlOqLUXYr2vn1Zj_dRg">
  
  <meta name="action-cable-url" content="wss://www.bird.club/cable">
  <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
  <link rel="stylesheet" href="https://www.bird.club/assets/application-b7127e6e8b2c2774c9b558bd090e0bad85f07613f79db8d538d7a1ebb2f74846.css" data-turbo-track="reload">
<link rel="stylesheet" href="https://www.bird.club/assets/lightbox-020432d3fc86fbb4b2dd26e6a1f8875311d74ec975db9bc2b15108926f952e7f.css" data-turbo-track="reload">
<link rel="stylesheet" href="https://www.bird.club/assets/trix-ac629f94e04ee467ab73298a3496a4dfa33ca26a132f624dd5475381bc27bdc8.css" data-turbo-track="reload">
<link rel="stylesheet" href="https://www.bird.club/assets/actiontext-676c48e55ad9ce074e05d583e8199a9da27db93d0946712323b9122e23665a26.css" data-turbo-track="reload">
<link rel="stylesheet" href="https://www.bird.club/assets/mapbox-fc5950363a3f029d3ba4df20815fe4a46c8f62c046cf2a032a333caa6e091555.css" data-turbo-track="reload">
  <script src="https://www.bird.club/assets/javascript/application-c434fecf367c1accae9289439476105d637cf1bc569c31174fde0936d7266a63.js" data-turbo-track="reload" defer="defer"></script>
<script src="https://www.bird.club/assets/activestorage-2be1208d0cfd359f5a555fbc65d29e0aa9ce544d38844eb59aef0f1213e55ade.js" data-turbo-track="reload" defer="defer"></script>
<script src="https://www.bird.club/assets/actioncable-ca0a4aee29ae2d01089a4d5e10d0540c43c8e2038d85819b59029ddfa4ca5da5.js" data-turbo-track="reload" defer="defer"></script>
<script src="https://www.bird.club/assets/actiontext-acde4d42660203a68336896e9c2d2c9865fd2ccc999f75671d83415e7c98c99e.js" data-turbo-track="reload" defer="defer"></script>
  <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png?v=M4K5PaEa4d">
  <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png?v=M4K5PaEa4d">
  <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png?v=M4K5PaEa4d">
  <link rel="manifest" href="/site.webmanifest?v=M4K5PaEa4d">
  <link rel="mask-icon" href="/safari-pinned-tab.svg?v=M4K5PaEa4d" color="#5bbad5">
  <link rel="shortcut icon" href="/favicon.ico?v=M4K5PaEa4d">
  <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
  <meta name="msapplication-TileColor" content="#0d9488">
  <meta name="theme-color" content="#ffffff">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,user-scalable=0">
  <script defer="" data-domain="bird.club" src="https://plausible.io/js/plausible.js"></script>
</head>

    <body class="h-full">
        <nav class="bg-white" data-controller="navbar">
            <turbo-cable-stream-source channel="Turbo::StreamsChannel" signed-stream-name="Im1lbWJlcl84MDgi--04e5622219b1df52ad2088e40b97c6b76da605f31d68d149b11bbbf18a12a17e"></turbo-cable-stream-source>
            <div class="mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between h-16">
                    <div class="flex">
                        <div class="flex-shrink-0 flex items-center text-4xl tracking-tight font-extrabold text-gray-900">
                            <a>
                                <img alt="BirdClub logo" srcset="https://www.bird.club/assets/logo/logo@2x-956290beed33ed2841b61b3f880995d6c6951252a264e6615c7338a75336109e.png 2x, https://www.bird.club/assets/logo/logo@4x-fd2728b28bda915145a696aa1dd9344b6b1211bce8a3d93ece4a28683fbe4d88.png 4x" src="https://www.bird.club/assets/logo/logo-312ed022e9e8abb1fcfcdfd5eaa3fd93fb11e7d70d4eef74149a7ba17c311e71.png" width="150" height="49" />
                            </a>        </div>
                    </div>
                    <div class="-mr-2 flex items-center sm:hidden">
                        <a class="p-2" href="/faq">
                            <button class="bg-white p-1 rounded-full relative text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-500">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class=" w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>

                            </button>
                        </a>          <div class="p-2">
                            <turbo-frame id="mail_mobile" target="_top">
                            </turbo-frame>          </div>
                        <div class="p-2">
                            <turbo-frame id="notifications_mobile" target="_top">
                                <a href="/notifications">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="text-gray-400 w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"></path>
                                    </svg>


                                </a>
                            </turbo-frame>          </div>
                        <button data-action="click->navbar#toggle" type="button" class="border-transparent inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-teal-500" aria-controls="mobile-menu" aria-expanded="false">
                            <span class="sr-only">Open main menu</span>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class=" w-6 h-6" data-navbar-target="close">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                            </svg>

                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="hidden w-6 h-6" data-navbar-target="open">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>

                        </button>
                    </div>
                    <div class="hidden sm:ml-6 sm:flex sm:items-center">

                        <div class="ml-4 flex items-center md:ml-6">
                            <a class="p-2" href="/faq">
                                <button class="bg-white p-1 rounded-full relative text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-500">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class=" w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                    </svg>

                                </button>
                            </a>      <div class="p-2">
                                <turbo-frame id="mail_desktop" target="_top">
                                </turbo-frame>      </div>
                            <turbo-frame id="notifications_desktop">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="text-gray-400 w-6 h-6">
                                <path stroke-linecap="round" stroke-linejoin="round" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9"></path>
                                </svg></turbo-frame>      


                            <div class="ml-3 relative" data-controller="dropdown">
                                <div data-controller="dropdown">
                                    <div data-dropdown-target="button" data-action="click->dropdown#toggleMenu click@window->dropdown#hideMenu">

                                        <% UserSession user = (UserSession) session.getAttribute("users");
                                            String fullname = user.getFullName();
                                            String email = user.getEmail();
                                            byte[] avatar = user.getImage();
                                        %>                                                                                
                                        <div>
                                            <button type="button" class="max-w-xs bg-white rounded-full flex items-center text-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-500 lg:p-2 lg:rounded-md lg:hover:bg-gray-50" id="user-menu-button" aria-expanded="false" aria-haspopup="true">
                                                <div class="w-8 h-8 bg-lime-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
                                                    <% out.print("<img src='data:image/jpg;base64," + Base64.getEncoder().encodeToString(user.getImage()) + "'>"); %>
                                                </div>
                                                <span class="hidden ml-3 text-gray-700 text-sm font-medium lg:block"> <% out.print(fullname); %>  </span>
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="hidden flex-shrink-0 ml-1 h-5 w-5 text-gray-400 lg:block w-5 h-5">
                                                <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path>
                                                </svg>
                                            </button>
                                        </div>
                                    </div>
                                    <div 
                                        class="hidden z-10 origin-top-right absolute right-0 mt-2 w-56 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 focus:outline-none divide-y divide-gray-100" 
                                        role="menu" 
                                        aria-orientation="vertical" 
                                        aria-labelledby="menu-button" 
                                        tabindex="-1"
                                        data-dropdown-target="menu"
                                        data-transition-enter="transition ease-out duration-100"
                                        data-transition-enter-start="transform opacity-0 scale-95"
                                        data-transition-enter-end="transform opacity-100 scale-100"
                                        data-transition-leave="transition ease-in duration-75"
                                        data-transition-leave-start="transform opacity-100 scale-100"
                                        data-transition-leave-end="transform opacity-0 scale-95"
                                        >
                                        <div class="px-4 py-3" role="none">
                                            <p class="text-sm" role="none">Signed in as</p>
                                            <p class="text-sm font-medium text-gray-900 truncate" role="none"> <% out.print(email); %> </p>
                                        </div>
                                        <div class="py-1" role="none">
                                            <a data-turbo-method="delete" class="hover:bg-gray-100 group flex items-center hover:text-gray-900 text-gray-700 block px-4 py-2 text-sm" href="login.jsp"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5">
                                                <path stroke-linecap="round" stroke-linejoin="round" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
                                                </svg>
                                                Sign out</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="hidden sm:hidden" id="mobile-menu" data-navbar-target="menu">
                    <div class="pt-4 pb-3 border-t border-gray-200">
                        <div class="flex items-center px-4">
                            <div class="flex-shrink-0">
                                <div class="w-12 h-12 bg-lime-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
                                    <img src="https://www.bird.club/assets/avatars/raven-fcf919bd3575083b93e6c2e97c49df2320e84254f6cd2f7656273601d1ddc12b.png" />
                                </div>

                            </div>
                            <div class="ml-3">
                                <div class="text-base font-medium text-gray-800">Nguoi choi chim</div>
                                <div class="text-sm font-medium text-gray-500">kaedeharayamamoto@gmail.com</div>
                            </div>
                        </div>
                        <div class="mt-3 space-y-1">
                            <h3 class="px-4 text-sm text-gray-700 font-bold">Clubs</h3>
                            <a class="block px-4 py-2 text-base font-medium text-gray-500 hover:text-gray-800 hover:bg-gray-100" href="/clubs/birds-in-ohio">Chim Owners</a>
                            <a class="border-t border-gray-200 block px-4 py-2 text-base font-medium text-gray-500 hover:text-gray-800 hover:bg-gray-100" href="/members/edit">Edit Settings</a>
                            <a data-turbo-method="delete" class="block px-4 py-2 text-base font-medium text-gray-500 hover:text-gray-800 hover:bg-gray-100" role="menuitem" tabindex="-1" href="/members/sign_out">Sign out</a>
                        </div>
                    </div>
                </div>

        </nav>
    <turbo-frame id="flash"></turbo-frame>
    <div class="bg-white">
        <div>
            <img class="h-32 w-full object-cover lg:h-48" src="https://cdn.shopify.com/s/files/1/0020/1926/2510/products/red-whiskered-bulbul-3_1024x1024@2x.jpg?v=1551037298" />
        </div>
        <div class="max-w-3xl lg:max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="-mt-12 sm:-mt-16 sm:flex sm:items-end sm:space-x-5">
                <div class="flex">
                    <div class="rounded-xl bg-white p-4 text-gray-400 object-scale-down h-24 w-24 sm:h-32 sm:w-32 items-center justify-center"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 200.49 262.32" class="h-16 w-16 sm:h-24 sm:w-24 mx-auto"><defs><style>.cls-1{fill:url(#linear-gradient);}.cls-2{fill:url(#linear-gradient-2);}</style><linearGradient id="linear-gradient" x1="-1.31" y1="139.14" x2="154.62" y2="89.2" gradientUnits="userSpaceOnUse"><stop offset="0" stop-color="#52c3cc"></stop><stop offset="1" stop-color="#45ddd5"></stop></linearGradient><linearGradient id="linear-gradient-2" x1="-1.3" y1="153.23" x2="160.24" y2="101.49" xlink:href="#linear-gradient"></linearGradient></defs><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><path class="cls-1" d="M40.7,122.53l9.92,9.91c16.31,16.31,9.17,42.07,3.79,62a405.22,405.22,0,0,1-24,65.74,1.48,1.48,0,0,0,2.33,1.72c17.2-15.52,30.88-30.84,46.63-46.3,17.36-17,33.21-37.12,38.31-60.92A80.78,80.78,0,0,0,113,106.66c-8.55-20.15-24.67-36-40.4-51.19C53.51,37,15.24,0,15.24,0S4.5,14.19,1.67,29.5c-2,11.09-2.45,22.59.14,33.57C7.47,87,23.73,105.55,40.7,122.53"></path><path class="cls-2" d="M200.49,114.77s-31.91-4.67-46.5,9.92C150.7,128,148.8,132,146.16,135c-5,5.79-11.95,8.2-18,9.27a90.45,90.45,0,0,0-6.95-41.12A104.54,104.54,0,0,0,112.44,87l.91-.7a44.4,44.4,0,0,1,26.06-9.09,41.63,41.63,0,0,1,29.46,12.18Z"></path></g></g></svg>
                    </div>
                </div>
                <div class="mt-6 sm:flex-1 sm:min-w-0 sm:flex sm:items-center sm:justify-end sm:space-x-6 sm:pb-1">
                    <div class="xs:hidden md:block mt-6 min-w-0 flex-1">
                        <h1 class="text-2xl font-bold text-gray-900 truncate">
                            Chim Owners
                        </h1>
                    </div>
                </div>
            </div>

            <div class="hidden sm:block mt-4">
                <nav class="-mb-px flex space-x-8">
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staffhome">Home</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm text-teal-600 border-teal-600 focus:outline-none" href="members">Members</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="blogs">Blogs</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="events">Events</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="tournaments">Tournaments</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="news">News</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="gallery">Gallery</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="${pageContext.request.contextPath}/MemberShipController?action=list">Membership</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="transactions">Transactions</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="feedbacks">Feedback</a>
                </nav>
            </div>
            <div class="sm:hidden py-4">
                <label for="current-tab" class="sr-only">Select a tab</label>

            </div>

            <div class="hidden xs:block md:hidden mt-6 min-w-0 flex-1">
                <h1 class="text-2xl font-bold text-gray-900 truncate">
                    Chim Owners
                </h1>
            </div>
        </div>
    </div>

    <%! Bird b;
        List<Tparticipation> list;%>
    <% b = (Bird) request.getAttribute("bird");
        list = (List<Tparticipation>) request.getAttribute("list");
    %>

    <main class="pb-8 pt-8">
        <div class="max-w-3xl mx-auto">

            <div class="grid grid-cols-1 items-start lg:grid-cols-5 lg:gap-8">
                <div class="grid grid-cols-1 gap-4 lg:col-span-5">
                    <div class="sm:flex sm:items-center px-4 sm:px-0">
                        <div class="sm:flex-auto">
                            <h1 class="text-xl font-semibold text-gray-900">PROFILE</h1>
                            <p class="mt-2 text-sm text-gray-700">
                                Details of  <% out.print(b.getName()); %>
                            </p>
                        </div>
                    </div>

                    <div>
                        <div class="lg:grid lg:grid-cols-12 lg:gap-x-16">
                            <div class="px-6 sm:px-0 lg:col-start-8 lg:col-end-13 lg:row-start-1 xl:col-start-9">
                                <% out.print("<img style='height: auto; width: auto; display: block; margin-bottom: 25px' src='data:image/png;base64," + Base64.getEncoder().encodeToString(b.getProfilePic()) + "'>"); %>                               
                            </div>
                            <div class="lg:col-span-7 xl:col-span-8">
                                <div class='pl-8 relative flex flex-col bg-white sm:rounded-lg shadow p-6'>
                                    <div class='mt-2 flex items-start space-x-3'>
                                    </div>

                                    <div><h1 class='font-bold text-xl text-gray-900'><span>
                                                <% out.print(b.getName()); %>
                                            </span>
                                        </h1></div>

                                    <div class='mt-4 flex items-start space-x-3'>
                                        <div class='mt-0.5'><span class='sr-only'></span>
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-person-fill text-gray-900 w-5 h-5" viewBox="0 0 16 16">
                                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                                            </svg> </div><div class='font-semibold text-gray-700 space-x-2'>Owner:   </div> <div> <% out.print(b.getUID()); %>  </div></div>        

                                    <div class='mt-4 flex items-start space-x-3'>
                                        <div class='mt-0.5'><span class='sr-only'></span>
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-gender-ambiguous text-gray-900 w-5 h-5" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M11.5 1a.5.5 0 0 1 0-1h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-3.45 3.45A4 4 0 0 1 8.5 10.97V13H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V14H6a.5.5 0 0 1 0-1h1.5v-2.03a4 4 0 1 1 3.471-6.648L14.293 1H11.5zm-.997 4.346a3 3 0 1 0-5.006 3.309 3 3 0 0 0 5.006-3.31z"/>
                                            </svg> </div><div class='font-semibold text-gray-700 space-x-2'>Gender:   </div> <div> <% out.print(b.getGender()); %>  </div></div>

                                    <div class='mt-4 flex items-start space-x-3'>
                                        <div class='mt-0.5'><span class='sr-only'></span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar-event text-gray-900 w-5 h-5" viewBox="0 0 16 16">
                                            <path d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z"/>
                                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                            </svg> </div><div class='font-semibold text-gray-700 space-x-2'>Age:   </div><div>  <% out.print(b.getAge()); %>  </div></div>

                                    <div class='mt-4 flex items-start space-x-3'>
                                        <div class='mt-0.5'><span class='sr-only'></span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-palette-fill text-gray-900 w-5 h-5" viewBox="0 0 16 16">
                                            <path d="M12.433 10.07C14.133 10.585 16 11.15 16 8a8 8 0 1 0-8 8c1.996 0 1.826-1.504 1.649-3.08-.124-1.101-.252-2.237.351-2.92.465-.527 1.42-.237 2.433.07zM8 5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm4.5 3a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zM5 6.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0zm.5 6.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/>
                                            </svg> </div><div class='font-semibold text-gray-700 space-x-2'>Color:   </div><div>  <% out.print(b.getColor()); %>  </div></div>

                                    <div class='mt-4 flex items-start space-x-3'>
                                        <div class='mt-1'><span class='sr-only'></span>  
                                            <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-calendar-plus text-gray-900 w-5 h-5" viewBox="0 0 16 16">
                                            <path d="M8 7a.5.5 0 0 1 .5.5V9H10a.5.5 0 0 1 0 1H8.5v1.5a.5.5 0 0 1-1 0V10H6a.5.5 0 0 1 0-1h1.5V7.5A.5.5 0 0 1 8 7z"/>
                                            <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                                            </svg> </div>
                                        <div class='font-semibold text-gray-700 space-x-2'>Added date:   </div><div>  <% out.print(b.getAddDate());%>  </div></div>

                                    <div class='mt-4 flex items-start space-x-3'>
                                        <div class='mt-0.5'><span class='sr-only'></span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen text-gray-900 w-5 h-5" viewBox="0 0 16 16">
                                            <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                                            </svg> </div><div class='font-semibold text-gray-700 space-x-2'>Description:   </div><div>  <% out.print(b.getDescription());%>  </div></div>

                                </div>


                            </div></div>




                        <div>
                            <div class="mt-8">
                                <div class="sm:flex-auto mb-4">
                                    <h1 class="text-xl font-semibold text-gray-900">Tournament joined</h1>
                                    <p class="mt-2 text-sm text-gray-700">
                                        Participation of  <% out.print(b.getName()); %> in ChimOwners
                                    </p>
                                </div>
                                <div class="lg:col-span-7 xl:col-span-8" id="events_list">
                                    <div class="flex flex-col sm:rounded-lg shadow">
                                        <div class="overflow-hidden ring-1 ring-black ring-opacity-5 sm:rounded-b-lg">
                                            <div class="table min-w-full">
                                                <div class="bg-gray-50 table-header-group">
                                                    <div class="table-row">
                                                        <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 pl-4 pr-3 sm:pl-6">
                                                            TID 
                                                        </div>                                                       
                                                        <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3">
                                                            DocNo
                                                        </div>
                                                        <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden sm:table-cell">
                                                            Achievement
                                                        </div>
                                                        <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden lg:table-cell">
                                                            Score
                                                        </div>
                                                        <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 relative pl-3 pr-4 sm:pr-6">

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="table-header-group bg-white">
                                                    <turbo-frame id="row_record_9959" class="contents" target="_top">
                                                        <!--List-->
                                                        <%
                                                            int size = (Integer) request.getAttribute("size");
                                                            if (size == 0) {
                                                                out.print("This bird has never been participated in any tournament before");
                                                            } else {
                                                                for (Tparticipation t : list) {
                                                                    out.print("<div class='mt-4 table-row bg-white'>"
                                                                            + "<div class='table-cell border-b border-gray-500 text-sm w-full max-w-0 py-4 pl-4 pr-3 sm:w-auto sm:max-w-none sm:pl-6 text-gray-900'>"
                                                                            + "<a class='hover:text-teal-600' href='http://localhost:8080/chimowners/tournaments?TID=" + t.getTID() + "&action=edittournament'>" + t.getTID() + "</a></div>"
                                                                            + "<div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                            + t.getDocNo() + "</div>"
                                                                            + " <div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                            + t.getAchievement() + "</div>"
                                                                            + "<div class='border-b border-gray-200 text-sm px-3 text-gray-500 hidden lg:table-cell'>"
                                                                            + t.getScore() + "</div>"
                                                                            + "<div class='table-cell border-b border-gray-200 text-sm text-gray-500 pl-3 pr-4 text-right sm:pr-6'>"
                                                                            + " </div> </div>"
                                                                            + "");
                                                                }
                                                            }
                                                        %>
                                                    </turbo-frame>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div></div></div>      







                    </div></div></div></div>       
    </main>

    <footer class="mt-8" aria-labelledby="footer-heading">
        <h2 id="footer-heading" class="sr-only">Footer</h2>
        <div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:py-12 lg:px-8">
            <div class="mt-8 border-t border-gray-200 pt-8 md:flex md:items-center md:justify-between">
                <div class="flex space-x-6 md:order-2">
                    <a href="mailto:hello@bird.club" class="text-gray-400 hover:text-gray-900">Contact us</a>
                </div>
                <p class="mt-8 text-base text-gray-400 md:mt-0 md:order-1">&copy; 2023 BirdClub. All rights reserved.</p>
            </div>
        </div>
    </footer>

</body>
</html>

