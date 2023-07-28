
<%@page import="com.fptuni.prj301.demo.model.UserSession"%>
<%@page import="java.util.Base64"%>
<%@page import="com.fptuni.prj301.demo.model.Blog"%>
<%@page import="com.fptuni.prj301.demo.model.Meeting"%>
<%@page import="com.fptuni.prj301.demo.model.Fieldtrip"%>
<%@page import="com.fptuni.prj301.demo.model.Tournament"%>
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
            }</style>

        <style type="text/css" data-tag-name="trix-toolbar">trix-toolbar {
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
            }</style>

        <style type="text/css">.turbo-progress-bar {
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
        <title>Home</title>
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

        <div data-controller="modal" data-modal-target="container" data-modal-id-value="photo_modal" data-modal-persist-value="true" class="hidden fixed z-[2000] inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
            <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                <div 
                    data-modal-target="overlay"
                    data-action="click->modal#close"
                    class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"
                    aria-hidden="true"
                    data-transition-enter="transition ease-out duration-300"
                    data-transition-enter-start="opacity-0"
                    data-transition-enter-end="opacity-100"
                    data-transition-leave="transition ease-in duration-200"
                    data-transition-leave-start="opacity-100"
                    data-transition-leave-end="opacity-0"
                    >
                </div>
                <!-- This element is to trick the browser into centering the modal contents. -->
                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div 
                    data-modal-target="content" 
                    class="hidden relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg md:max-w-xl lg:max-w-5xl sm:p-6"

                    data-transition-enter="transition ease-out duration-300"
                    data-transition-enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                    data-transition-enter-end="opacity-100 translate-y-0 sm:scale-100"

                    data-transition-leave="transition ease-in duration-200"
                    data-transition-leave-start="opacity-100 translate-y-0 sm:scale-100"
                    data-transition-leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                    >
                    <div class="hidden sm:block absolute top-0 right-0 pt-4 pr-4">
                        <button data-action="click->modal#close" type="button" class="bg-white rounded-md text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-slate-500">
                            <span class="sr-only">Close</span>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class=" w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>

                        </button>
                    </div>
                    <div class="sm:flex sm:items-start">
                        <turbo-frame data-modal-target="test" class="w-full" id="photo_modal" target="_top"></turbo-frame>
                    </div>
                </div>
            </div>
        </div>

        <div data-controller="modal" data-modal-target="container" data-modal-id-value="modal" data-modal-persist-value="false" class="hidden fixed z-[2000] inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
            <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                <div 
                    data-modal-target="overlay"
                    data-action="click->modal#close"
                    class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"
                    aria-hidden="true"
                    data-transition-enter="transition ease-out duration-300"
                    data-transition-enter-start="opacity-0"
                    data-transition-enter-end="opacity-100"
                    data-transition-leave="transition ease-in duration-200"
                    data-transition-leave-start="opacity-100"
                    data-transition-leave-end="opacity-0"
                    >
                </div>
                <!-- This element is to trick the browser into centering the modal contents. -->
                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div 
                    data-modal-target="content" 
                    class="hidden relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg w-full sm:p-6"

                    data-transition-enter="transition ease-out duration-300"
                    data-transition-enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                    data-transition-enter-end="opacity-100 translate-y-0 sm:scale-100"

                    data-transition-leave="transition ease-in duration-200"
                    data-transition-leave-start="opacity-100 translate-y-0 sm:scale-100"
                    data-transition-leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                    >
                    <div class="hidden sm:block absolute top-0 right-0 pt-4 pr-4">
                        <button data-action="click->modal#close" type="button" class="bg-white rounded-md text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-slate-500">
                            <span class="sr-only">Close</span>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class=" w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg>

                        </button>
                    </div>
                    <div class="sm:flex sm:items-start">
                        <turbo-frame data-modal-target="test" class="w-full" id="modal" target="_top"></turbo-frame>
                    </div>
                </div>
            </div>
        </div>

    <turbo-frame id="flash"></turbo-frame>
    <div class="bg-white shadow">

        <div class="max-w-3xl lg:max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="-mt-12 sm:-mt-16 sm:flex sm:items-end sm:space-x-5">
                <div class="mt-6 sm:flex-1 sm:min-w-0 sm:flex sm:items-center sm:justify-end sm:space-x-6 sm:pb-1">
                    <div class="xs:hidden md:block mt-6 min-w-0 flex-1">
                    </div>
                </div>
            </div>
            <div class="hidden sm:block mt-4">
                <nav class="-mb-px flex space-x-8">
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm text-teal-600 border-teal-600 focus:outline-none" href="staffhome">Home</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="members">Members</a>
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
                    <option value="" selected>Home</option>
                    <option value="" >Members</option>
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



    <main class="pb-8 pt-4">
        <%! List<Integer> list;%>
        <% list = (List<Integer>) request.getAttribute("list"); %>
        <div class="">

            <div class="">
                <dl class="lg:grid lg:grid-cols-5 gap-4 mb-4">
                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <dt class="text-base font-normal text-gray-900"><a href="members">Total members:</a></dt>
                        <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                            <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                <% int totalMember = (Integer) request.getAttribute("totalMember");
                                    out.print(totalMember);
                                %>
                            </div>
                        </dd>
                    </div>

                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <dt class="text-base font-normal text-gray-900">New members this month:</dt>
                        <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                            <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                <% int newMemberThisMonth = (Integer) request.getAttribute("newMemberThisMonth");
                                    out.print(newMemberThisMonth);
                                %>
                            </div>
                        </dd>
                    </div>

                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <dt class="text-base font-normal text-gray-900"><a href="feedbacks">Pending feedbacks:</a> </dt>
                        <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                            <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                <% int totalPendingFeedback = (Integer) request.getAttribute("totalPendingFeedback");
                                    out.print(totalPendingFeedback);
                                %>
                            </div>
                        </dd>
                    </div>

                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <dt class="text-base font-normal text-gray-900"><a href="events">On going events:</a></dt>
                        <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                            <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                <% int totalOngoingEvents = (Integer) request.getAttribute("totalOngoingEvents");
                                    out.print(totalOngoingEvents);
                                %>
                            </div>
                        </dd>
                    </div>

                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <dt class="text-base font-normal text-gray-900"><a href="events">Placeholder:</a></dt>
                        <dd class="mt-1 flex justify-between items-baseline md:block lg:flex">
                            <div class="flex items-baseline text-2xl font-semibold text-teal-600">
                                10
                            </div>
                        </dd>
                    </div>
                </dl>
            </div>


            <div class="lg:grid lg:grid-cols-4 gap-4">
                <div class="col-span-3 lg:grid lg:grid-cols-3 gap-4">
                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <h3 class="font-bold text-gray-700 truncate">Top 10 tournaments</h3>
                        <canvas id="myChart"></canvas>
                            <%! List<Tournament> topTournament;%>
                            <% topTournament = (List<Tournament>) request.getAttribute("topTournament");                        %>
                        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                        <script>
                            const ctx = document.getElementById('myChart');
                            new Chart(ctx, {
                            type: 'bar',
                                    data: {
                                    labels: [
                            <%
                                for (int i = 0; i < topTournament.size() - 1; i++) {
                                    out.print("'" + topTournament.get(i).getTID() + "',");
                                }
                                out.print("'" + topTournament.get(topTournament.size() - 1).getTID() + "'");
                            %>],
                                            datasets: [{
                                            label: '# of participants',
                                                    data: [
                            <%
                                for (int i = 0; i < topTournament.size() - 1; i++) {
                                    out.print("'" + topTournament.get(i).getNumberOfParticipant() + "',");
                                }
                                out.print("'" + topTournament.get(topTournament.size() - 1).getNumberOfParticipant() + "'");
                            %>],
                                                    borderWidth: 1
                                            }]
                                    },
                                    options: {
                                    scales: {
                                    y: {
                                    beginAtZero: true
                                    }
                                    }
                                    }
                            });
                        </script>
                    </div>


                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <h3 class="font-bold text-gray-700 truncate">New registrations per month in 2023</h3>
                        <canvas id="NumOfSignup"></canvas>
                        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                        <script>
                            var NumOfSignup = document.getElementById("NumOfSignup");
                            var data = {
                            label: "Members",
                            <% out.print("data: [");
                                for (int i = 0; i < list.size() - 1; i++) {
                                    out.print("'" + list.get(i) + "',");
                                }
                                out.print("'" + list.get(list.size() - 1) + "'" + "],");
                            %>

                            lineTension: 0,
                                    fill: false,
                                    borderColor: '#febc2c'};
                            var numberData = {
                            labels: ["Jan", "Feb", "March", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                                    datasets: [data]};
                            var chartOptions = {legend: {display: true, position: 'top', labels: {boxWidth: 80, fontColor: 'white'}}};
                            var lineChart = new Chart(NumOfSignup, {type: 'line', data: numberData, options: chartOptions});
                        </script>                   
                    </div>

                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <h3 class="font-bold text-gray-700 truncate">Member increases in 2023</h3>
                        <canvas id="NumOfMembers"></canvas>
                        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                        <%! List<Integer> bList;%>
                        <% bList = (List<Integer>) request.getAttribute("bList"); %>
                        <script>
                            var NumOfMembers = document.getElementById("NumOfMembers");
                            var data = {
                            label: "Members",
                            <% out.print("data: [");
                                for (int i = 0; i < bList.size() - 1; i++) {
                                    out.print("'" + bList.get(i) + "',");
                                }
                                out.print("'" + bList.get(bList.size() - 1) + "'" + "],");
                            %>

                            lineTension: 0,
                                    fill: false,
                                    borderColor: '#0d9488'};
                            var numberData = {
                            labels: ["Jan", "Feb", "March", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                                    datasets: [data]};
                            var chartOptions = {legend: {display: true, position: 'top', labels: {boxWidth: 80, fontColor: 'white'}}};
                            var lineChart2 = new Chart(NumOfMembers, {type: 'line', data: numberData, options: chartOptions});
                        </script>                   
                    </div>           



                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <h3 class="font-bold text-gray-700 truncate">Top 10 field trips</h3>
                        <canvas id="myChart2"></canvas>
                            <%! List<Fieldtrip> topFieldtrip;%>
                            <% topFieldtrip = (List<Fieldtrip>) request.getAttribute("topFieldtrip");                        %>
                        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                        <script>
                            const ctx2 = document.getElementById('myChart2');
                            new Chart(ctx2, {
                            type: 'bar',
                                    data: {
                                    labels: [
                            <%
                                for (int i = 0; i < topFieldtrip.size() - 1; i++) {
                                    out.print("'" + topFieldtrip.get(i).getFID() + "',");
                                }
                                out.print("'" + topFieldtrip.get(topFieldtrip.size() - 1).getFID() + "'");
                            %>],
                                            datasets: [{
                                            label: '# of participants',
                                                    data: [
                            <%
                                for (int i = 0; i < topFieldtrip.size() - 1; i++) {
                                    out.print("'" + topFieldtrip.get(i).getNumberOfParticipant() + "',");
                                }
                                out.print("'" + topFieldtrip.get(topFieldtrip.size() - 1).getNumberOfParticipant() + "'");
                            %>],
                                                    borderWidth: 1
                                            }]
                                    },
                                    options: {
                                    scales: {
                                    y: {
                                    beginAtZero: true
                                    }
                                    }
                                    }
                            });
                        </script>

                        <h3 class="font-bold text-gray-700 truncate mt-8">Top 10 meetings</h3>
                        <canvas id="myChart3"></canvas>
                            <%! List<Meeting> topMeeting;%>
                            <% topMeeting = (List<Meeting>) request.getAttribute("topMeeting");                        %>
                        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                        <script>
                            const ctx3 = document.getElementById('myChart3');
                            new Chart(ctx3, {
                            type: 'bar',
                                    data: {
                                    labels: [
                            <%
                                for (int i = 0; i < topMeeting.size() - 1; i++) {
                                    out.print("'" + topMeeting.get(i).getMeID() + "',");
                                }
                                out.print("'" + topMeeting.get(topMeeting.size() - 1).getMeID() + "'");
                            %>],
                                            datasets: [{
                                            label: '# of participants',
                                                    data: [
                            <%
                                for (int i = 0; i < topMeeting.size() - 1; i++) {
                                    out.print("'" + topMeeting.get(i).getNumberOfParticipant() + "',");
                                }
                                out.print("'" + topMeeting.get(topMeeting.size() - 1).getNumberOfParticipant() + "'");
                            %>],
                                                    borderWidth: 1
                                            }]
                                    },
                                    options: {
                                    scales: {
                                    y: {
                                    beginAtZero: true
                                    }
                                    }
                                    }
                            });
                        </script>
                    </div>             


                    <div class="bg-white shadow sm:rounded-lg p-6 col-span-2">
                        <h3 class="font-bold text-gray-700 truncate mb-4">On going events</h3>

                        <div class="">
                            <%! List<Tournament> tournamentsList;
                                List<Fieldtrip> fList;
                                List<Meeting> mList;%>

                            <% tournamentsList = (List<Tournament>) request.getAttribute("tournamentsList");
                                fList = (List<Fieldtrip>) request.getAttribute("fList");
                                mList = (List<Meeting>) request.getAttribute("mList");
                            %>
                            <div class="ring-1 ring-black ring-opacity-5 sm:rounded-b-lg">
                                <div class="table min-w-full">
                                    <div class="bg-gray-50 table-header-group">
                                        <div class="table-row">
                                            <div class="table-cell border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 relative">
                                                Name
                                            </div>
                                            <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden sm:table-cell">
                                                Started since
                                            </div>
                                            <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden lg:table-cell">
                                                Estimated end date
                                            </div>
                                            <div class="border-b border-gray-300 py-3.5 text-left text-sm font-semibold text-gray-900 px-3 hidden lg:table-cell"> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-header-group bg-white">
                                        <div class="contents  ">
                                            <% if (tournamentsList.size() != 0) {
                                                    for (Tournament t : tournamentsList) {
                                                        out.print("<div class='table-row bg-white'>"
                                                                + "<div class='table-cell border-b border-gray-500 text-sm w-full max-w-0 py-4 pr-3 sm:w-auto sm:max-w-none sm:pl-6 text-gray-900'>"
                                                                + "<a class='hover:text-teal-600' href='http://localhost:8080/chimowners/tournaments?action=edittournament&TID=" + t.getTID() + "'>" + t.getName() + "</a></div>"
                                                                + " <div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                + t.getStartDate() + "</div>"
                                                                + "<div class='border-b border-gray-200 text-sm px-3 text-gray-500 hidden lg:table-cell'>"
                                                                + t.getEndDate() + "</div>"
                                                                + "<div class='table-cell border-b border-gray-200 text-sm text-gray-500 pl-3 pr-4 text-right sm:pr-6'>"
                                                                + " </div> </div>"
                                                                + "");
                                                    }
                                                }%>

                                            <% if (fList.size() != 0) {
                                                    for (Fieldtrip f : fList) {
                                                        out.print("<div class='table-row bg-white'>"
                                                                + "<div class='table-cell border-b border-gray-500 text-sm w-full max-w-0 py-4 pr-3 sm:w-auto sm:max-w-none sm:pl-6 text-gray-900'>"
                                                                + "<a class='hover:text-teal-600' href='http://localhost:8080/chimowners/events?action=editfieldtrip&FID=" + f.getFID() + "'>" + f.getName() + "</a></div>"
                                                                + " <div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                + f.getStartDate() + "</div>"
                                                                + "<div class='border-b border-gray-200 text-sm px-3 text-gray-500 hidden lg:table-cell'>"
                                                                + f.getEndDate() + "</div>"
                                                                + "<div class='table-cell border-b border-gray-200 text-sm text-gray-500 pl-3 pr-4 text-right sm:pr-6'>"
                                                                + " </div> </div>"
                                                                + "");
                                                    }
                                                }%>

                                            <% if (mList.size() != 0) {
                                                    for (Meeting me : mList) {
                                                        out.print("<div class='table-row bg-white'>"
                                                                + "<div class='table-cell border-b border-gray-500 text-sm w-full max-w-0 py-4 pr-3 sm:w-auto sm:max-w-none sm:pl-6 text-gray-900'>"
                                                                + "<a class='hover:text-teal-600' href='http://localhost:8080/chimowners/events?action=editmeeting&MeID=" + me.getMeID() + "'>" + me.getName() + "</a></div>"
                                                                + " <div class='table-cell border-b border-gray-200 text-sm px-3 text-gray-500'>"
                                                                + me.getStartDate() + "</div>"
                                                                + "<div class='border-b border-gray-200 text-sm px-3 text-gray-500 hidden lg:table-cell'>"
                                                                + me.getEndDate() + "</div>"
                                                                + "<div class='table-cell border-b border-gray-200 text-sm text-gray-500 pl-3 pr-4 text-right sm:pr-6'>"
                                                                + " </div> </div>"
                                                                + "");
                                                    }
                                                }%>
                                        </div>
                                    </div>
                                </div>
                            </div>   

                        </div>

                    </div>                   

                </div>


                <div class="gap-4">
                    <div class="bg-white shadow sm:rounded-lg p-6 mb-4">                                                                   
                        <h3 class="font-bold text-gray-700 truncate">Revenue</h3>
                        <canvas id="pieChart" class="p-6"></canvas>
                        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                        <% List<Integer> revenueList = (List<Integer>) request.getAttribute("revenueList"); %>
                        <script>
                            const pieChart = document.getElementById('pieChart');
                            var pieChartData = {labels: ['Membership', 'Fee', 'Donation'],
                                    datasets: [{label: 'Revenue overall', data: [
                            <% out.print(revenueList.get(0) + ", " + revenueList.get(1) + ", " + revenueList.get(2));%>
                                    ],
                                            backgroundColor: ['rgb(77, 205, 207)', 'rgb(31, 82, 83)', 'rgb(45, 121, 122)'],
                                            hoverOffset: 4}]};
                            var firstPieChart = new Chart(pieChart, {type: 'pie', data: pieChartData});
                        </script>                                                
                    </div> 

                    <div class="bg-white shadow sm:rounded-lg p-6">
                        <h3 class="font-bold text-gray-700 truncate mb-4">Contact</h3>
                        <div class="table min-w-full">
                            <div class="table-header-group bg-white">
                                <div class="contents  ">
                                    <% if (tournamentsList.size() != 0) {
                                            for (Tournament t : tournamentsList) {
                                                out.print("<div class='table-row bg-white mb-4'>"
                                                        + "<div class='table-cell text-sm text-gray-900'>"
                                                        + t.getIncharge() + "</div>"
                                                        + "<div class='table-cell text-sm text-gray-500'>"
                                                        + t.getContact() + "</div>"
                                                        + "</div>"
                                                        + "");
                                            }
                                        }%>

                                    <% if (fList.size() != 0) {
                                            for (Fieldtrip f : fList) {
                                                out.print("<div class='table-row bg-white mb-4'>"
                                                        + "<div class='table-cell text-sm text-gray-900'>"
                                                        + f.getIncharge() + "</div>"
                                                        + "<div class='table-cell text-sm text-gray-500'>"
                                                        + f.getContact() + "</div>"
                                                        + "</div>"
                                                        + "");
                                            }
                                        }%>

                                    <% if (mList.size() != 0) {
                                            for (Meeting me : mList) {
                                                out.print("<div class='table-row bg-white mb-4'>"
                                                        + "<div class='table-cell text-sm text-gray-900'>"
                                                        + me.getIncharge() + "</div>"
                                                        + "<div class='table-cell text-sm text-gray-500'>"
                                                        + "</div>"
                                                        + "");
                                            }
                                        }%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer class="mt-8" aria-labelledby="footer-heading">

    </footer>

</body>
</html>