<%@page import="java.util.Base64"%>
<%@page import="com.fptuni.prj301.demo.model.UserSession"%>
<%@page import="com.fptuni.prj301.demo.model.Member"%>
<%@page import="java.util.List"%>
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
        <title>Members</title>
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
                                </svg>



                            </turbo-frame>      <div class="ml-3 relative" data-controller="dropdown">
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
                <select data-controller="select" data-action="change->select#change" data-select-target="menu" id="current-tab" name="current-tab" class="block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-teal-500 focus:border-teal-500 sm:text-sm rounded-md">
                    <option value="" >Home</option>
                    <option value="" selected>Members</option>
                    <option value="" >Blogs</option>
                    <option value="" >Events</option>
                    <option value="" >Articles</option>
                    <option value="" >Gallery</option>
                    <option value="" >Feedback</option>
                </select>
            </div>

            <div class="hidden xs:block md:hidden mt-6 min-w-0 flex-1">
                <h1 class="text-2xl font-bold text-gray-900 truncate">
                    Chim Owners
                </h1>
            </div>
        </div>
    </div>

    <main class="pb-8 pt-8">
        <div class="max-w-3xl mx-auto sm:px-6 lg:max-w-7xl lg:px-8">

            <div class="grid grid-cols-1 items-start lg:grid-cols-5 lg:gap-8">
                <div class="grid grid-cols-1 gap-4 lg:col-span-5">

                    <div class="sm:flex sm:items-center px-4 sm:px-0">
                        <div class="sm:flex-auto">
                            <% int memberNum = (int) request.getAttribute("memberNum");
                                int guestNum = (int) request.getAttribute("guestNum");
                                int ignoredNum = (int) request.getAttribute("ignoredNum");
                            %>
                            <h1 class="text-xl font-semibold text-gray-900">
                                Our club currently has <% out.print(memberNum); %> members
                            </h1>
                            <p class="mt-2 text-sm text-gray-700">
                                A full list of current members and approval requests of CHIM OWNERS.
                            </p>
                            <p></p>
                        </div>

                        <div class="mt-4 sm:mt-0 sm:ml-16 flex flex-row items-center space-x-6">
                            <form id="viewguests">
                                <input type="hidden" name="action" value="viewguests">
                            </form>
                            <button class="px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2" form="viewguests" type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg"  fill="currentColor" class="bi bi-bell-fill -ml-1 mr-3 w-5 h-5" viewBox="0 0 16 16">
                                <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z"/>
                                </svg>
                                Check registration requests
                            </button>
                        </div>
                        <div class="mt-4 sm:mt-0 sm:ml-16 flex flex-row items-center space-x-6">
                            <form id="viewbirds">
                                <input type="hidden" name="action" value="viewbirds">
                            </form>
                            <button class="px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2" form="viewbirds" type="submit">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-twitter -ml-1 mr-3 w-5 h-5" viewBox="0 0 16 16">
                                <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                                </svg>
                                View birds
                            </button>
                        </div>
                    </div>

                    <%! List<Member> membersList;%>
                    <% membersList = (List<Member>) request.getAttribute("membersList"); %>  


                    <div>
                        <div class="">
                            <div class="lg:col-span-7 xl:col-span-8" id="events_list">

                                <div data-controller="record-filters">
                                    <!-- Filters -->
                                    <section aria-labelledby="filter-heading" class="relative z-10 grid items-center">
                                        <h2 id="filter-heading" class="sr-only">Filters</h2>
                                        <div class="relative col-start-1 row-start-1 py-4">
                                            <div class="max-w-7xl mx-auto flex space-x-6 divide-x divide-gray-200 text-sm px-4">
                                                <div><button data-record-filters-target="toggle" data-action="record-filters#toggle" type="button" class="group text-gray-700 font-medium flex items-center" aria-controls="disclosure-1" aria-expanded="false">
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="flex-none mr-2 text-gray-400 group-hover:text-gray-500 w-5 h-5">
                                                        <path fill-rule="evenodd" d="M3 3a1 1 0 011-1h12a1 1 0 011 1v3a1 1 0 01-.293.707L12 11.414V15a1 1 0 01-.293.707l-2 2A1 1 0 018 17v-5.586L3.293 6.707A1 1 0 013 6V3z" clip-rule="evenodd"></path>
                                                        </svg>Filter</button></div></div></div>

                                        <form class="hidden" data-record-filters-target="form" data-turbo-action="advance" accept-charset="UTF-8" method="get">
                                            <div class="border-t border-gray-200 py-10" id="disclosure-1">
                                                <div class="max-w-7xl mx-auto  gap-x-4 px-4 text-sm md:gap-x-6">
                                                    <div class="grid grid-cols-1 md:grid-cols-2 gap-y-10 lg:grid-cols-3 md:gap-x-6 w-full">
                                                        <div class="space-y-4">
                                                            <div>
                                                                <legend class="block font-medium">Month</legend>
                                                                <div class="mt-1">
                                                                    <select class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="month" id="month">                                                           
                                                                        <%! int index; %>
                                                                        <% for (index = 1; index <= 12; index++) {
                                                                                out.print("<option value='" + index + "'>" + index + "</option>");
                                                                            } %>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div>
                                                                <legend class="block font-medium">Year</legend>
                                                                <div class="mt-1">
                                                                    <select class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="year" id="year">                                                           
                                                                        <option value="2022">2022</option>
                                                                        <option value="2023">2023</option>
                                                                        <option value="2024">2024</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="space-y-4">
                                                            <legend class="block font-medium">Confirm sort</legend>
                                                            <div class="mt-1">                                               
                                                                <button type="submit" class="flex justify-center py-2 px-4 text-base text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2">
                                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="flex-none mr-2 w-5 h-5">
                                                                    <path fill-rule="evenodd" d="M3 3a1 1 0 011-1h12a1 1 0 011 1v3a1 1 0 01-.293.707L12 11.414V15a1 1 0 01-.293.707l-2 2A1 1 0 018 17v-5.586L3.293 6.707A1 1 0 013 6V3z" clip-rule="evenodd"></path>
                                                                    </svg>Sort</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="hidden" name="action" value="viewmembers">

                                        </form>  </section>
                                </div>


                                <!--                                Brief data-->
                                <div class="flex flex-col sm:rounded-lg shadow">
                                    <div>
                                        <dl class="sm:rounded-t-lg grid grid-cols-1 bg-white overflow-hidden border-b border-gray-200 divide-y divide-gray-200 md:grid-cols-3 md:divide-y-0 md:divide-x">
                                            <div class="px-4 py-5 sm:p-6">
                                                <dt class="text-base font-normal text-gray-900">Total participants</dt>
                                                <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                                                    <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                                        <% out.print(memberNum); %>
                                                    </div>
                                                </dd>
                                            </div>

                                            <div class="px-4 py-5 sm:p-6">
                                                <dt class="text-base font-normal text-gray-900">Waiting for approval</dt>
                                                <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                                                    <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                                        <% out.print(guestNum); %>
                                                    </div>
                                                </dd>
                                            </div>

                                            <div class="px-4 py-5 sm:p-6">
                                                <dt class="text-base font-normal text-gray-900">Ignored</dt>
                                                <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                                                    <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                                        <% out.print(ignoredNum); %>
                                                    </div>
                                                </dd>
                                            </div>
                                        </dl>
                                    </div>

                                    <div class="overflow-hidden ring-1 ring-black ring-opacity-5 sm:rounded-b-lg">
                                        <div class="table min-w-full">
                                            <div class="bg-gray-50 table-header-group">
                                                <div class="table-row">
                                                    <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 pl-4 pr-3 sm:pl-6">
                                                        Full Name
                                                    </div>
                                                    <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 relative">
                                                        <span class="sr-only"></span>
                                                    </div>
                                                    <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3">
                                                        Membership
                                                    </div>
                                                    <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden sm:table-cell">
                                                        Phone number
                                                    </div>
                                                    <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden lg:table-cell">
                                                        Email
                                                    </div>
                                                    <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 relative pl-3 pr-4 sm:pr-6">
                                                        <span class="sr-only">Edit</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="table-header-group bg-white">
                                                <turbo-frame id="row_record_9959" class="contents" target="_top">

                                                    <!--List-->

                                                    <%

                                                        for (Member m : membersList) {
                                                            out.print("<div class='table-row bg-white'>"
                                                                    + "<div class='table-cell border-b border-gray-500 text-sm w-full max-w-0 py-4 pl-4 pr-3 sm:w-auto sm:max-w-none sm:pl-6 text-gray-900'>"
                                                                    + "<a class='hover:text-teal-600' href='http://localhost:8080/chimowners/members?action=viewmemberdetails&UID=" + m.getUID() + "'>" + m.getFullName() + "</a></div>"
                                                                    + "<div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                    + " <div class='flex flex-row items-center space-x-2'>"
                                                                    + " <div class='text-teal-600 -mb-1'></div></div></div>"
                                                                    + " <div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                    + m.getMID() + "</div>"
                                                                    + "<div class='border-b border-gray-200 text-sm px-3 text-gray-500 hidden lg:table-cell'>"
                                                                    + m.getPhone() + "</div>"
                                                                    + " <div class='border-b border-gray-200 text-sm px-3 text-gray-500 hidden sm:table-cell'>"
                                                                    + " <a class='hover:text-gray-900' href=''>" + m.getEmail() + "</a></div>"
                                                                    + "<div class='table-cell border-b border-gray-200 text-sm text-gray-500 pl-3 pr-4 text-right sm:pr-6'>"
                                                                    + " </div> </div>"
                                                                    + "");

                                                        }
                                                    %>

                                                </turbo-frame>

                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div></div></div>




                    <div class="pt-6 flex items-center">
                        <div class="hidden sm:block">
                            <span class="pagy-info">Displaying <b><% out.print(membersList.size()); %></b> member(s)</span>
                        </div>
                        <%! int i;
                            String theme;%>
                        <% memberNum = (memberNum / 20) + 1;
                            theme = " bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 ";
                            int pageNum = (Integer) request.getAttribute("page");
                            for (i = 1; i <= memberNum; i++) {
                                if (i == pageNum) {
                                    theme = " bg-gray-600 hover:bg-gray-700 focus:ring-gray-500 ";
                                }
                                out.print("<span class='page'><form>"
                                        + "<input type='hidden' name='page' value='" + i + "'>"
                                        + "<input type='hidden' name='action' value='viewmembers'>"
                                        + "<button type='submit' class='ml-4 px-4 py-2 text-sm text-white shadow-sm border-transparent " + theme + " inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'>" + i + "</button>"
                                        + "</form></span>");
                                theme = " bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 ";
                            }
                        %>
                    </div>

                </div>
            </div>

        </div>
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

