<%@page import="java.util.Base64"%>
<%@page import="com.fptuni.prj301.demo.model.UserSession"%>
<%@page import="com.fptuni.prj301.demo.model.Location"%>
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
        <title>Tournament</title>
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





        <div data-controller="modal" data-modal-target="container" data-modal-id-value="modal2" data-modal-persist-value="false" class="hidden fixed z-[2000] inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
            <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                <div     data-modal-target="overlay"      data-action="click->modal#close"
                         class="hidden fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity"      aria-hidden="true"
                         data-transition-enter="transition ease-out duration-300"      data-transition-enter-start="opacity-0"
                         data-transition-enter-end="opacity-100"      data-transition-leave="transition ease-in duration-200"
                         data-transition-leave-start="opacity-100"      data-transition-leave-end="opacity-0"      >    </div>
                <!-- This element is to trick the browser into centering the modal contents. -->
                <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                <div       data-modal-target="content" 
                           class="hidden relative inline-block align-bottom bg-white rounded-lg px-4 pt-5 pb-4 text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg w-full sm:p-6"
                           data-transition-enter="transition ease-out duration-300"      data-transition-enter-start="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                           data-transition-enter-end="opacity-100 translate-y-0 sm:scale-100"      data-transition-leave="transition ease-in duration-200"
                           data-transition-leave-start="opacity-100 translate-y-0 sm:scale-100"      data-transition-leave-end="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"    >
                    <div class="hidden sm:block absolute top-0 right-0 pt-4 pr-4">
                        <button data-action="click->modal#close" type="button" class="bg-white rounded-md text-gray-400 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-slate-500">
                            <span class="sr-only">Close</span>
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class=" w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
                            </svg></button></div>

                    <div class="sm:flex sm:items-start">
                        <turbo-frame data-modal-target="test" class="w-full" id="modal" target="_top" reloadable="" src="https://www.bird.club/clubs/birds-in-ohio/events/new?start_date=2023-06-01">
                            <h3 class="text-lg leading-6 font-medium text-gray-900">New tournament</h3>
                            <turbo-frame id="new_event" target="_top">

                                <form class="space-y-4" accept-charset="UTF-8" method="post" id="tournament">
                                    <div class="mt-3"><label class="block text-sm font-medium text-gray-700" for="event_title">Tournament's title</label>
                                        <div class="mt-1"><input class="w-full block shadow-sm sm:text-sm border-gray-300 focus:ring-teal-500 focus:border-teal-500 rounded-md" type="text" name="name" id="name"></div></div>

                                    <div class="flex flex-row space-x-4">
                                        <div>
                                            <label class="block text-sm font-medium text-gray-700" for="event_location">Location: </label>
                                            <div class="mt-1">
                                                <%! List<Location> locationsList;  %>
                                                <% locationsList = (List<Location>) request.getAttribute("locationsList"); %>
                                                <select class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="LID" id="LID">
                                                    <%
                                                        for (Location l : locationsList) {
                                                            out.print("<option value='" + l.getLid() + "'>" + l.getName() + "</option>");
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                        <div><label class="block text-sm font-medium text-gray-700" >Max participants</label>
                                            <div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="text" name="numberOfParticipant" id="numberOfParticipant">
                                            </div></div>
                                    </div>
                                    <div class="flex flex-row space-x-4">
                                        <div><label class="block text-sm font-medium text-gray-700" for="event_date">Form will be closed at:</label>
                                            <div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="date" name="registrationDeadline" id="registrationDeadline"></div></div>
                                    </div>

                                    <div class="flex flex-row space-x-4"><div><label class="block text-sm font-medium text-gray-700" for="event_start_time">Start date</label>
                                            <div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="date" name="startDate" id="startDate"></div></div>
                                        <div><label class="block text-sm font-medium text-gray-700" for="event_end_time">End date</label>
                                            <div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="date" name="endDate" id="endDate"></div></div></div>

                                    <div class="flex flex-row space-x-4">
                                        <div><label class="block text-sm font-medium text-gray-700" >Fee (VND)</label>
                                            <div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="text" name="fee" id="fee"></div></div>
                                        <div><label class="block text-sm font-medium text-gray-700" >Total prize (VND)</label>
                                            <div class="mt-1"><input class="block shadow-sm sm:text-sm border-gray-300 rounded-md focus:ring-teal-500 focus:border-teal-500" type="text" name="totalPrize" id="totalPrize">
                                            </div></div>
                                    </div>

                                    <div><label class="block text-sm font-medium text-gray-700" for="description">Description</label>
                                        <div class="mt-1"> <textarea rows="5" class="w-full block shadow-sm sm:text-sm border-gray-300 rounded-md outline-none focus:ring-teal-500 focus:border-teal-500" name="description" id="description"></textarea>
                                        </div></div>

                                    <div class="text-right sm:col-span-4">
                                        <input name="action" value="addtournament" type="hidden">
                                        <button type="submit" form="tournament" class="px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2">
                                            Create</button></div></form></turbo-frame></turbo-frame></div></div></div></div>


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
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="members">Members</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="blogs">Blogs</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="events">Events</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm text-teal-600 border-teal-600 focus:outline-none" href="tournaments">Tournaments</a>
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

    <main class="pb-8 pt-8">
        <div class="max-w-3xl mx-auto sm:px-6 lg:max-w-7xl lg:px-8">

            <div class="grid grid-cols-1 items-start lg:grid-cols-5 lg:gap-8">
                <div class="grid grid-cols-1 gap-4 lg:col-span-5">

                    <div class="sm:flex sm:items-center px-4 sm:px-0">
                        <div class="sm:flex-auto">
                            <h1 class="text-xl font-semibold text-gray-900">TOURNAMENTS</h1>
                            <p class="mt-2 text-sm text-gray-700">
                                Available tournaments hosted by Chim Owners.
                            </p>
                        </div>


                        <div class="mt-4 sm:mt-0 sm:ml-16 sm:flex-none" style="margin-left:1rem">
                            <a class="w-full flex justify-center py-2 px-4 text-base text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2" data-turbo-frame="modal" href="">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="-ml-1 mr-3 w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                                </svg>Add a tournament</a>
                        </div>
                    </div>



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
                                                    <legend class="block font-medium">Status</legend>
                                                    <div class="mt-1">
                                                        <select class="block pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none sm:text-sm rounded-md focus:ring-teal-500 focus:border-teal-500" name="status" id="status">
                                                            <option value="pending">Pending</option>
                                                            <option value="formClosed">Registration ended</option>
                                                            <option value="ongoing">On going</option>
                                                            <option value="finished">Terminated</option>
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
                                <input type="hidden" name="action" value="viewtournaments">

                            </form>  </section>
                    </div> 




                    <div>
                        <div class="lg:grid lg:grid-cols-12 lg:gap-x-16">
                            <div class="px-6 sm:px-0 mt-4 lg:col-start-8 lg:col-end-13 lg:row-start-1 xl:col-start-9">

                            </div>
                            <div class="lg:col-span-7 xl:col-span-8" id="events_list">
                                <ul class="space-y-4 leading-6 text-sm mt-4">

                                    <%! List<Tournament> tournamentsList;%> 
                                    <% tournamentsList = (List<Tournament>) request.getAttribute("tournamentsList");
                                        int totalNum = (Integer) request.getAttribute("size");
                                        if (totalNum == 0) {
                                            out.print("There is no tournament");
                                        } else {
                                            for (Tournament tournament : tournamentsList) {
                                                out.print("<li class='relative flex flex-col bg-white sm:rounded-lg shadow p-6'>"
                                                        + "<div><h1 class='font-bold text-xl text-gray-900 space-x-2'><span>"
                                                        + tournament.getName()
                                                        + "</span>");

                                                if (tournament.getStatus().trim().equalsIgnoreCase("pending")) {
                                                    out.print("<span class='inline-flex items-center px-2.5 py-0.5 font-medium bg-gray-100 text-gray-800 text-xs rounded-full'>"
                                                            + "Pending"
                                                            + "</span>");
                                                } else if (tournament.getStatus().trim().equalsIgnoreCase("formClosed")) {
                                                    out.print("<span class='inline-flex items-center px-2.5 py-0.5 font-medium bg-yellow-100 text-yellow-800 text-xs rounded-full'>"
                                                            + "Form is closed"
                                                            + "</span>");
                                                } else if (tournament.getStatus().trim().equalsIgnoreCase("ongoing")) {
                                                    out.print("<span class='inline-flex items-center px-2.5 py-0.5 font-medium bg-lime-100 text-lime-800 text-xs rounded-full'>"
                                                            + "On going"
                                                            + "</span>");
                                                } else if (tournament.getStatus().trim().equalsIgnoreCase("finished")) {
                                                    out.print("<span class='inline-flex items-center px-2.5 py-0.5 font-medium bg-red-100 text-red-800 text-xs rounded-full'>"
                                                            + "Finished"
                                                            + "</span>");
                                                }

                                                out.print("<h1 class='font-semibold text-lg text-gray-900 space-x-2 mb-4'>" + tournament.getStartDate() + "</h1></h1>");

                                                out.print("<div class='grid items-start lg:grid-cols-2 lg:gap-8'>"
                                                        + "<div class='lg:col-span-1'>"
                                                        + "<div class='flex items-start space-x-3'>"
                                                        + "<div class='mt-0.5'><span class='sr-only'></span>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20' fill='currentColor' class='text-gray-400 w-5 h-5'>"
                                                        + "  <path fill-rule='evenodd' d='M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z' clip-rule='evenodd'></path>"
                                                        + "</svg></div><div class='font-semibold text-gray-700 space-x-2 mb-2'>In charge: </div>"
                                                        + "<div>" + tournament.getIncharge() + "</div></div>"
                                                        + "<div class='mt-2 flex items-start space-x-3'>"
                                                        + "<div class='mt-0.5'><span class='sr-only'></span>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20' fill='currentColor' class='text-gray-400 w-5 h-5'>"
                                                        + "  <path fill-rule='evenodd' d='M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z' clip-rule='evenodd'></path>"
                                                        + "</svg></div><div class='font-semibold text-gray-700 space-x-2 mb-2'>Registration deadline: </div>"
                                                        + "<div>" + tournament.getRegistrationDeadline() + "</div></div>"
                                                        + "<div class='mt-2 flex items-start space-x-3 '>"
                                                        + "<div class='mt-0.5'><span class='sr-only'></span><svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20' fill='currentColor' class='text-gray-400 w-5 h-5'>"
                                                        + "<path fill-rule='evenodd' d='M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z' clip-rule='evenodd'></path>"
                                                        + "</svg></div><div class='font-semibold text-gray-700 space-x-2 mb-2'>Location:   </div> <div>" + tournament.getLID() + "</div></div>"
                                                        + "</div>"
                                                        + "<div class='lg:col-span-1'>"
                                                        + "<div class='flex items-start space-x-3'>"
                                                        + "<div class='mt-0.5'><span class='sr-only'></span>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-person-exclamation text-gray-400' viewBox='0 0 16 16'>"
                                                        + "<path d='M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Z'/>"
                                                        + "<path d='M16 12.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0Zm-3.5-2a.5.5 0 0 0-.5.5v1.5a.5.5 0 0 0 1 0V11a.5.5 0 0 0-.5-.5Zm0 4a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1Z'/>"
                                                        + "</div><div class='font-semibold text-gray-700 space-x-2'>Participant limit:   </div> <div>" + tournament.getNumberOfParticipant() + " members</div></div>"
                                                        + "<div class='mt-2 flex items-start space-x-3'>"
                                                        + "<div class='mt-0.5'><span class='sr-only'></span>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-currency-dollar text-gray-400' viewBox='0 0 16 16'>"
                                                        + "<path d='M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z'/></svg>"
                                                        + "</div><div class='font-semibold text-gray-700 space-x-2'>Registration fee:   </div> <div>" + tournament.getFee() + " VND</div></div>"
                                                        + "</div>"
                                                        + "</div>"
                                                        + "<div class='mt-2 flex items-start space-x-3'>"
                                                        + "<div class='mt-0.5'><span class='sr-only'></span>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-info-circle-fill text-gray-400' viewBox='0 0 16 16'>"
                                                        + "<path d='M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z'/></svg>"
                                                        + "</div><div class='font-semibold text-gray-700 space-x-2'>Description:   </div></div>"
                                                        + "<div class='mt-2 space-y-4 space-x-3'>" + tournament.getDescription() + "</div>"
                                                        + "<div class='mt-2 flex items-start space-x-3'>"
                                                        + "<div class='mt-0.5'><span class='sr-only'></span>" + "<svg xmlns='http://www.w3.org/2000/svg' width='20' height='20' fill='currentColor' class='bi bi-exclamation-circle-fill  text-gray-400' viewBox='0 0 16 16'>"
                                                        + "<path d='M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z'/></svg>"
                                                        + "</div><div class='font-semibold text-gray-700 space-x-2'>Note:   </div></div>"
                                                        + "<div class='mt-2 space-y-4 space-x-3'>" + tournament.getNote() + "</div>"
                                                        + "<div style='margin-top: 20px' class='flex items-start space-x-3'>");

                                                if (tournament.getStatus().trim().equalsIgnoreCase("pending")) {
                                                    out.print("<form>"
                                                            + "<input type='hidden' name='TID' value = '" + tournament.getTID() + "'>"
                                                            + "<input type='hidden' name='action' value='closeform'>"
                                                            + "<button class='flex justify-center py-2 px-4 text-base text-gray-500 border-transparent text-xs bg-white hover:bg-yellow-100 hover:text-gray-500 focus:ring-gray-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'"
                                                            + "type='submit'><svg xmlns='http://www.w3.org/2000/svg' fill='currentColor' class='bi bi-ui-checks mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5' viewBox='0 0 16 16'>"
                                                            + "<path d='M7 2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-1zM2 1a2 2 0 0 0-2 2v2a2 2 0 0 0 2 2h2a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2H2zm0 8a2 2 0 0 0-2 2v2a2 2 0 0 0 2 2h2a2 2 0 0 0 2-2v-2a2 2 0 0 0-2-2H2zm.854-3.646a.5.5 0 0 1-.708 0l-1-1a.5.5 0 1 1 .708-.708l.646.647 1.646-1.647a.5.5 0 1 1 .708.708l-2 2zm0 8a.5.5 0 0 1-.708 0l-1-1a.5.5 0 0 1 .708-.708l.646.647 1.646-1.647a.5.5 0 0 1 .708.708l-2 2zM7 10.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-1zm0-5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 8a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z'/>"
                                                            + "</svg>Close registration</button>"
                                                            + "</form>");
                                                }

                                                if (tournament.getStatus().trim().equalsIgnoreCase("formClosed")) {
                                                    out.print("<form>"
                                                            + "<input type='hidden' name='TID' value = '" + tournament.getTID() + "'>"
                                                            + "<input type='hidden' name='action' value='start'>"
                                                            + "<button class='flex justify-center py-2 px-4 text-base text-gray-500 border-transparent text-xs bg-white hover:bg-lime-200 hover:text-gray-500 focus:ring-gray-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'"
                                                            + "type='submit'>"
                                                            + "<svg xmlns='http://www.w3.org/2000/svg' fill='currentColor' class='bi bi-check-circle-fill mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5' viewBox='0 0 16 16'>"
                                                            + "<path d='M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z'/>"
                                                            + "</svg>Start</button>"
                                                            + "</form>");
                                                }

                                                if (tournament.getStatus().trim().equalsIgnoreCase("ongoing")) {
                                                    out.print("<form><input type='hidden' name='TID' value = '" + tournament.getTID() + "'>"
                                                            + "<input type='hidden' name='action' value='terminatetournament'>"
                                                            + "<button class='flex justify-center py-2 px-4 text-base text-gray-500 border-transparent text-xs bg-white hover:bg-red-200 hover:text-gray-500 focus:ring-gray-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'"
                                                            + "type='submit'>"
                                                            + "<svg xmlns='http://www.w3.org/2000/svg' fill='currentColor' class='bi bi-x-circle-fill mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5' viewBox='0 0 16 16'>"
                                                            + "<path d='M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z'/>"
                                                            + "</svg>Terminate</button></form>");
                                                }

                                                out.print("<form>"
                                                        + "<input type='hidden' name='TID' value = '" + tournament.getTID() + "'>"
                                                        + "<input type='hidden' name='action' value='edittournament'>"
                                                        + "<button class='flex justify-center py-2 px-4 text-base text-gray-500 border-transparent text-xs bg-white hover:bg-gray-700 hover:text-white focus:ring-gray-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'"
                                                        + "type='submit'>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24' stroke='currentColor' class='mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5'>"
                                                        + "<path stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z'></path>"
                                                        + "</svg>Edit</button>"
                                                        + "</form>");

                                                out.print("<form>"
                                                        + "<input type='hidden' name='TID' value = '" + tournament.getTID() + "'>"
                                                        + "<input type='hidden' name='action' value='viewtournamentmedia'>"
                                                        + "<button class='flex justify-center py-2 px-4 text-base text-gray-500 border-transparent text-xs bg-white hover:bg-gray-700 hover:text-white focus:ring-gray-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'"
                                                        + "type='submit'>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' fill='currentColor' class='bi bi-images mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5' viewBox='0 0 16 16'>"
                                                        + "<path d='M4.502 9a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z'/>"
                                                        + "<path d='M14.002 13a2 2 0 0 1-2 2h-10a2 2 0 0 1-2-2V5A2 2 0 0 1 2 3a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v8a2 2 0 0 1-1.998 2zM14 2H4a1 1 0 0 0-1 1h9.002a2 2 0 0 1 2 2v7A1 1 0 0 0 15 11V3a1 1 0 0 0-1-1zM2.002 4a1 1 0 0 0-1 1v8l2.646-2.354a.5.5 0 0 1 .63-.062l2.66 1.773 3.71-3.71a.5.5 0 0 1 .577-.094l1.777 1.947V5a1 1 0 0 0-1-1h-10z'/>"
                                                        + "</svg>"
                                                        + "Media</button></form>");

                                                out.print(""
                                                        + "<form action='./mail'>"
                                                        + "<input type='hidden' name='ID' value = '" + tournament.getTID() + "'>"
                                                        + "<button class='flex justify-center py-2 px-4 text-base text-gray-500 border-transparent text-xs bg-white hover:bg-gray-700 hover:text-white focus:ring-gray-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'"
                                                        + "type='submit'>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' fill='currentColor' class='bi bi-bell-fill mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5' viewBox='0 0 16 16'>"
                                                        + "<path d='M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zm.995-14.901a1 1 0 1 0-1.99 0A5.002 5.002 0 0 0 3 6c0 1.098-.5 6-2 7h14c-1.5-1-2-5.902-2-7 0-2.42-1.72-4.44-4.005-4.901z'/>"
                                                        + "</svg>Notify members</button>"
                                                        + "</form>");

                                                out.print("<form>"
                                                        + "<input type='hidden' name='TID' value = '" + tournament.getTID() + "'>"
                                                        + "<input type='hidden' name='action' value='viewtournamentparticipants'>"
                                                        + "<button class='flex justify-center py-2 px-4 text-base text-gray-500 border-transparent text-xs bg-white hover:bg-gray-700 hover:text-white focus:ring-gray-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'"
                                                        + "type='submit'>"
                                                        + "<svg xmlns='http://www.w3.org/2000/svg' fill='currentColor' class='bi bi-people-fill mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5' viewBox='0 0 16 16'>"
                                                        + "<path d='M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7Zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm-5.784 6A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216ZM4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5Z'/>"
                                                        + "</svg>Participants</button>"
                                                        + "</form>");

                                                out.print("</div>"
                                                        + "</li>"
                                                        + "");
                                            }
                                        }%>   

                                </ul>

                            </div></div></div></div></div>


            <div class="pt-6 flex items-center justify-between">
                <nav class="pagy-nav pagination">
                    <%! int i;%>
                    <%
                        int pageNum = (Integer) request.getAttribute("pageNum");
                        String status = (String) request.getAttribute("status");

                        totalNum = (totalNum / 10) + 1;
                        for (i = 1;
                                i <= totalNum;
                                i++) {
                            if (pageNum == i) {
                                out.print("<span class='page'><form>"
                                        + "<input type='hidden' name='page' value='" + i + "'>"
                                        + "<input type='hidden' name='action' value='viewtournaments'>"
                                        + "<input type='hidden' name='status' value='" + status + "'>"
                                        + "<button type='submit' class='ml-4 px-4 py-2 text-sm text-white shadow-sm border-transparent bg-gray-600 hover:bg-gray-700 focus:ring-gray-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'>" + i + "</button>"
                                        + "</form></span>");
                            } else {
                                out.print("<span class='page'><form>"
                                        + "<input type='hidden' name='page' value='" + i + "'>"
                                        + "<input type='hidden' name='action' value='viewtournaments'>"
                                        + "<input type='hidden' name='status' value='" + status + "'>"
                                        + "<button type='submit' class='ml-4 px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2'>" + i + "</button>"
                                        + "</form></span>");
                            }
                        }
                    %>
                </nav>
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

