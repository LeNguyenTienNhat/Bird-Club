<%@page import="java.util.ArrayList"%>
<%@page import="com.fptuni.prj301.demo.model.Media"%>
<%@page import="java.util.Base64"%>
<%@page import="com.fptuni.prj301.demo.model.UserSession"%>
<%@page import="com.fptuni.prj301.demo.model.Location"%>
<%@page import="java.util.List"%>
<%@page import="com.fptuni.prj301.demo.model.Tournament"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-full bg-gray-100"><head><style type="text/css" data-tag-name="trix-editor">trix-editor {
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
        <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
        <link rel="stylesheet" href="https://www.bird.club/assets/application-e28f118614ca4a1f17d351ebc8dde1991c2801620fc57b5bed8bdf702a5f10e7.css" data-turbo-track="reload">
        <link rel="stylesheet" href="https://www.bird.club/assets/lightbox-020432d3fc86fbb4b2dd26e6a1f8875311d74ec975db9bc2b15108926f952e7f.css" data-turbo-track="reload">
        <link rel="stylesheet" href="https://www.bird.club/assets/trix-ac629f94e04ee467ab73298a3496a4dfa33ca26a132f624dd5475381bc27bdc8.css" data-turbo-track="reload">
        <link rel="stylesheet" href="https://www.bird.club/assets/actiontext-dfc9b48c08497309387b4a0b3363f2eab057e4e90495f8d3ff1e2333132cc094.css" data-turbo-track="reload">
        <link rel="stylesheet" href="https://www.bird.club/assets/mapbox-fc5950363a3f029d3ba4df20815fe4a46c8f62c046cf2a032a333caa6e091555.css" data-turbo-track="reload">
        <script src="https://www.bird.club/assets/javascript/application-951dfa64380d0c18e6bed336edfce393f2a8c83a2b818269476b2d2271cd4b3c.js" data-turbo-track="reload" defer="defer"></script>
        <script src="https://www.bird.club/assets/activestorage-2be1208d0cfd359f5a555fbc65d29e0aa9ce544d38844eb59aef0f1213e55ade.js" data-turbo-track="reload" defer="defer"></script>
        <script src="https://www.bird.club/assets/actioncable-ca0a4aee29ae2d01089a4d5e10d0540c43c8e2038d85819b59029ddfa4ca5da5.js" data-turbo-track="reload" defer="defer"></script>
        <script src="https://www.bird.club/assets/actiontext-acde4d42660203a68336896e9c2d2c9865fd2ccc999f75671d83415e7c98c99e.js" data-turbo-track="reload" defer="defer"></script>
        <script defer="" data-domain="bird.club" src="https://plausible.io/js/plausible.js"></script>
        <title>Details</title><meta name="csrf-param" content="authenticity_token"><meta name="csrf-token" content="49sxdQ85g0LxLl4lQRjbW3ADrwu-Y5fcG_7_kePOxck14HeZS_ktOiHOrrqyKzsFEHQGbzxVwIKljjtXyjaQDg"><meta name="action-cable-url" content="wss://www.bird.club/cable"><link rel="stylesheet" href="https://rsms.me/inter/inter.css"><link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png?v=M4K5PaEa4d"><link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png?v=M4K5PaEa4d"><link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png?v=M4K5PaEa4d"><link rel="manifest" href="/site.webmanifest?v=M4K5PaEa4d"><link rel="mask-icon" href="/safari-pinned-tab.svg?v=M4K5PaEa4d" color="#5bbad5"><link rel="shortcut icon" href="/favicon.ico?v=M4K5PaEa4d"><meta name="msapplication-TileColor" content="#0d9488"><meta name="theme-color" content="#ffffff"><meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,user-scalable=0"></head>

    <body class="h-full font-sans">
        <nav class="bg-white" data-controller="navbar">
            <turbo-cable-stream-source channel="Turbo::StreamsChannel" signed-stream-name="Im1lbWJlcl84MDgi--04e5622219b1df52ad2088e40b97c6b76da605f31d68d149b11bbbf18a12a17e"></turbo-cable-stream-source>
            <div class="mx-auto px-4 sm:px-6 lg:px-8">
                <div class="flex justify-between h-16">
                    <div class="flex">
                        <div class="flex-shrink-0 flex items-center text-4xl tracking-tight font-extrabold text-gray-900">
                            <a href="/">
                                <img alt="BirdClub logo" srcset="https://www.bird.club/assets/logo/logo@2x-956290beed33ed2841b61b3f880995d6c6951252a264e6615c7338a75336109e.png 2x, https://www.bird.club/assets/logo/logo@4x-fd2728b28bda915145a696aa1dd9344b6b1211bce8a3d93ece4a28683fbe4d88.png 4x" src="https://www.bird.club/assets/logo/logo-312ed022e9e8abb1fcfcdfd5eaa3fd93fb11e7d70d4eef74149a7ba17c311e71.png" width="150" height="49">
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
                <div class="hidden sm:hidden" id="mobile-menu" data-navbar-target="menu">
                    <div class="pt-4 pb-3 border-t border-gray-200">
                        <div class="flex items-center px-4">
                            <div class="flex-shrink-0">
                                <div class="w-12 h-12 bg-lime-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
                                    <img src="https://www.bird.club/assets/avatars/raven-fcf919bd3575083b93e6c2e97c49df2320e84254f6cd2f7656273601d1ddc12b.png">
                                </div>

                            </div>
                            <div class="ml-3">
                                <div class="text-base font-medium text-gray-800">Kaedehara Yamamoto</div>
                                <div class="text-sm font-medium text-gray-500">kaedeharayamamoto@gmail.com</div>
                            </div>
                        </div>
                        <div class="mt-3 space-y-1">
                            <h3 class="px-4 text-sm text-gray-700 font-bold">Clubs</h3>
                            <a class="block px-4 py-2 text-base font-medium text-gray-500 hover:text-gray-800 hover:bg-gray-100" href="/clubs/birds-in-ohio">Birds in Ohio</a>
                            <a class="border-t border-gray-200 block px-4 py-2 text-base font-medium text-gray-500 hover:text-gray-800 hover:bg-gray-100" href="/members/edit">Edit Settings</a>
                            <a data-turbo-method="delete" class="block px-4 py-2 text-base font-medium text-gray-500 hover:text-gray-800 hover:bg-gray-100" role="menuitem" tabindex="-1" href="/members/sign_out">Sign out</a>
                        </div>
                    </div>
                </div>

            </div></nav>

        <div data-controller="modal" data-modal-target="container" data-modal-id-value="modal" data-modal-persist-value="false" class="hidden fixed z-[2000] inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
            <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                <div data-modal-target="overlay" data-action="click->modal#close" class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true" data-transition-enter="transition ease-out duration-300" data-transition-enter-start="opacity-0" data-transition-enter-end="opacity-100" data-transition-leave="transition ease-in duration-200" data-transition-leave-start="opacity-100" data-transition-leave-end="opacity-0">
                </div>
                <!-- This element is to trick the browser into centering the modal contents. -->
                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">​</span>
                <div data-modal-target="content" class="hidden relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg w-full sm:p-6" data-transition-enter="transition ease-out duration-300" data-transition-enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95" data-transition-enter-end="opacity-100 translate-y-0 sm:scale-100" data-transition-leave="transition ease-in duration-200" data-transition-leave-start="opacity-100 translate-y-0 sm:scale-100" data-transition-leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95">
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
    <main class="pb-8 pt-8">
        <div class="max-w-3xl mx-auto sm:px-6 lg:max-w-5xl lg:px-8">

            <div class="">
                <div class="">

                    <div class="sm:flex sm:items-center px-4 sm:px-0">
                        <div class="sm:flex-auto">
                            <h1 class="text-xl font-semibold text-gray-900">TOURNAMENT</h1>
                            <p class="mt-2 text-sm text-gray-700">

                            </p>
                        </div>
                    </div>

                    <section aria-labelledby="profile-overview-title">
                        <div class="bg-white sm:rounded-b-lg sm:rounded-t-lg"  style=" padding: 50px">

                            <%! Tournament tournament; %>
                            <% tournament = (Tournament) request.getAttribute("tournament"); %>

                            <div class="space-y-8 divide-y divide-gray-200">
                                <form class="edit_member" id="edit" action="./tournaments" method="post">
                                    <turbo-frame id="flash"></turbo-frame>
                                    <div>
                                        <div class="">
                                            <h3 class="text-lg leading-6 font-medium text-gray-900">Edit</h3>
                                            <p class="mt-1 text-sm text-gray-500">View and edit the tournament's details</p>
                                        </div>
                                        <div class="grid grid-cols-3 lg:grid-cols-5 gap-6 ">

                                            <div class="col-span-3">
                                                <label class="block text-sm font-medium text-gray-700" for="name">Name</label>
                                                <div class="mt-1">
                                                    <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value= <% out.print("'" + tournament.getName() + "'"); %> name="name" id="name">
                                                </div>
                                            </div>

                                            <div class="col-span-2">
                                                <label class="block text-sm font-medium text-gray-700" for="host">Host</label>
                                                <div class="mt-1">
                                                    <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value= <% out.print("'" + tournament.getHost() + "'"); %> name="host" id="host">
                                                </div>
                                            </div>

                                            <div class="col-span-3">
                                                <label class="block text-sm font-medium text-gray-700" for="incharge">In charge</label>
                                                <div class="mt-1">
                                                    <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value= <% out.print("'" + tournament.getIncharge() + "'"); %> name="incharge" id="incharge">
                                                </div>
                                            </div>

                                            <div class="col-span-2">
                                                <label class="block text-sm font-medium text-gray-700" for="contact">Contact</label>
                                                <div class="mt-1">
                                                    <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value= <% out.print("'" + tournament.getContact() + "'"); %> name="contact" id="contact">
                                                </div>
                                            </div>

                                            <%! List<Location> locationsList;
                                                String select;
                                                String tournamentLocID;
                                                Location loc;%>
                                            <% locationsList = (List<Location>) request.getAttribute("locationsList");
                                                loc = (Location) request.getAttribute("location");
                                                tournamentLocID = tournament.getLID().trim();
                                            %>
                                            <div class="col-span-full"><label class="block text-sm font-medium text-gray-700" for="event_location">Location:</label>
                                                <div class="mt-1">

                                                    <select class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="LID" id="LID">
                                                        <%
                                                            for (Location l : locationsList) {
                                                                select = "";
                                                                if (tournamentLocID.equalsIgnoreCase(l.getLid().trim())) {
                                                                    select = "selected='selected'";
                                                                }
                                                                out.print("<option " + select + " value='" + l.getLid() + "'>" + l.getName() + "</option>");
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                                <p class="block text-sm font-medium text-gray-700">Details: <% out.print(loc.getCoordination()); %></p>                                                        
                                            </div>
                                            <div class="col-span-4 grid grid-cols-4 gap-6">

                                                <div class="col-span-2">
                                                    <label class="block text-sm font-medium text-gray-700" for="registrationDeadline">Registration deadline (yyyy/mm/dd)</label>
                                                    <div class="mt-1">
                                                        <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value=<% out.print("'" + tournament.getRegistrationDeadline() + "'"); %> name="registrationDeadline" id="registrationDeadline">
                                                    </div>
                                                </div>


                                                <div class="col-span-2">
                                                    <label class="block text-sm font-medium text-gray-700" for="startDate">Start date (yyyy/mm/dd)</label>
                                                    <div class="mt-1">
                                                        <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value=<% out.print("'" + tournament.getStartDate() + "'"); %> name="startDate" id="startDate">
                                                    </div>
                                                </div>

                                                <div class="col-span-2">
                                                    <label class="block text-sm font-medium text-gray-700" for="endDate">End date (yyyy/mm/dd)</label>
                                                    <div class="mt-1">
                                                        <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value=<% out.print("'" + tournament.getEndDate() + "'"); %> name="endDate" id="endDate">
                                                    </div>
                                                </div>

                                                <div class="col-span-2">
                                                    <label class="block text-sm font-medium text-gray-700" for="totalPrize">Total prize (VND)</label>
                                                    <div class="mt-1">
                                                        <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value=<% out.print("'" + tournament.getTotalPrize() + "'"); %> name="totalPrize" id="totalPrize">
                                                    </div>
                                                </div>

                                                <div class="col-span-1">
                                                    <label class="w-full block text-sm font-medium text-gray-700" for="status">Status: </label>
                                                    <div class="mt-1">
                                                        <%! String select1, select2, select3, select4;%>
                                                        <% select1 = select2 = select3 = select4 = ""; %>
                                                        <%
                                                            if (tournament.getStatus().trim().equalsIgnoreCase("pending")) {
                                                                select1 = "selected='selected'";
                                                            } else if (tournament.getStatus().trim().equalsIgnoreCase("formClosed")) {
                                                                select2 = "selected='selected'";
                                                            } else if (tournament.getStatus().trim().equalsIgnoreCase("ongoing")) {
                                                                select3 = "selected='selected'";
                                                            } else {
                                                                select4 = "selected='selected'";
                                                            }
                                                        %>

                                                        <select class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="status" id="status">
                                                            <option <% out.print(select1); %> value="pending">Pending</option>
                                                            <option <% out.print(select2); %> value="formClosed">Form closed</option>
                                                            <option <% out.print(select3); %> value="ongoing">On going</option>
                                                            <option <% out.print(select4); %> value="finished">Terminated</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-span-2">
                                                    <label class="block text-sm font-medium text-gray-700" for="fee">Participation fee (VND)</label>
                                                    <div class="mt-1">
                                                        <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value=<% out.print("'" + tournament.getFee() + "'"); %> name="fee" id="fee">
                                                    </div>
                                                </div>

                                                <div class="col-span-1">
                                                    <label class="block text-sm font-medium text-gray-700" for="numberOfParticipant">Max participants</label>
                                                    <div class="mt-1">
                                                        <input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" value=<% out.print("'" + tournament.getNumberOfParticipant() + "'"); %> name="numberOfParticipant" id="numberOfParticipant">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-span-full mt-8">
                                            <label class="block text-sm font-medium text-gray-700" for="description">Description</label>
                                            <div class="mt-1">
                                                <textarea rows="5" class="w-full block shadow-sm sm:text-sm border-gray-300 rounded-md outline-none focus:ring-teal-500 focus:border-teal-500" name="description"  id="description"><% out.print(tournament.getDescription()); %></textarea>
                                            </div>
                                            <p class="mt-2 text-sm text-gray-500">A brief description of the tournament</p>
                                        </div>

                                        <div class="col-span-full">
                                            <label class="block text-sm font-medium text-gray-700" for="note">Note</label>
                                            <div class="mt-1">
                                                <textarea rows="5" class="w-full block shadow-sm sm:text-sm border-gray-300 rounded-md outline-none focus:ring-teal-500 focus:border-teal-500" name="note"  id="note"><% out.print(tournament.getNote()); %></textarea>
                                            </div>
                                            <p class="mt-2 text-sm text-gray-500">A brief note to notice our participants</p>
                                        </div>

                                        <div class="pt-5">
                                            <div class="flex justify-end">
                                                <input type="hidden" name="action" value="updatetournament">
                                                <input type="hidden" name="TID" value=<% out.print("'" + tournament.getTID() + "'");%>>
                                            </div>
                                        </div>
                                    </div>
                                </form>            
                                <button type="submit" form="edit" class="px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2">
                                    Update</button>

                            </div>
                        </div>
                    </section>



                    <div>
                        <div class="lg:grid lg:grid-cols-12 lg:gap-x-16">
                            <div class="px-6 sm:px-0 mt-4 lg:col-start-8 lg:col-end-13 lg:row-start-1 xl:col-start-9">
                            </div>
                            <div class="lg:col-span-7 xl:col-span-8" id="events_list">
                                <%! List<Media> list;%>    
                                <% list = (ArrayList) request.getAttribute("mediaList"); %>

                                <ul role="list" class="grid grid-cols-2 gap-x-0.5 gap-y-0.5 sm:grid-cols-3 lg:grid-cols-4 mt-8 px-4 sm:px-0">

                                    <%
                                        for (Media m : list) {
                                            out.print("<li class='relative hover:opacity-75'>"
                                                    + "<a data-turbo-frame='photo_modal'></a><a data-turbo-frame='photo_modal' class='hover:opacity-75'>"
                                                    + "<img src='data:image/jpeg;base64," + Base64.getEncoder().encodeToString(m.getImage()) + "'>"
                                                    + "</a></li>");
                                        }
                                    %>

                                </ul>
                            </div></div></div>
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
                <p class="mt-8 text-base text-gray-400 md:mt-0 md:order-1">© 2023 BirdClub. All rights reserved.</p>
            </div>
        </div>
    </footer>



</body></html>
