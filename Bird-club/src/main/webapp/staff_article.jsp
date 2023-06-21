<%-- 
    Document   : staff_article
    Created on : Jun 4, 2023, 3:25:23 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-full bg-gray-100">
    <head>
        <title>Article</title>
        <link rel="stylesheet" href="https://rsms.me/inter/inter.css">
        <link rel="stylesheet" href="https://www.bird.club/assets/application-e28f118614ca4a1f17d351ebc8dde1991c2801620fc57b5bed8bdf702a5f10e7.css" data-turbo-track="reload" />
        <link rel="stylesheet" href="https://www.bird.club/assets/lightbox-020432d3fc86fbb4b2dd26e6a1f8875311d74ec975db9bc2b15108926f952e7f.css" data-turbo-track="reload" />
        <link rel="stylesheet" href="https://www.bird.club/assets/trix-ac629f94e04ee467ab73298a3496a4dfa33ca26a132f624dd5475381bc27bdc8.css" data-turbo-track="reload" />
        <link rel="stylesheet" href="https://www.bird.club/assets/actiontext-dfc9b48c08497309387b4a0b3363f2eab057e4e90495f8d3ff1e2333132cc094.css" data-turbo-track="reload" />
        <link rel="stylesheet" href="https://www.bird.club/assets/mapbox-fc5950363a3f029d3ba4df20815fe4a46c8f62c046cf2a032a333caa6e091555.css" data-turbo-track="reload" />
        <script src="https://www.bird.club/assets/javascript/application-951dfa64380d0c18e6bed336edfce393f2a8c83a2b818269476b2d2271cd4b3c.js" data-turbo-track="reload" defer="defer"></script>
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
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,user-scalable=0"/>
        <script defer data-domain="bird.club" src="https://plausible.io/js/plausible.js"></script>
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

                                        <div>
                                            <button type="button" class="max-w-xs bg-white rounded-full flex items-center text-sm focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-cyan-500 lg:p-2 lg:rounded-md lg:hover:bg-gray-50" id="user-menu-button" aria-expanded="false" aria-haspopup="true">
                                                <div class="w-8 h-8 bg-lime-100 flex items-center justify-center rounded-full overflow-hidden  flex-shrink-0">
                                                    <img src="https://staticg.sportskeeda.com/editor/2021/04/bd904-16194408810325-800.jpg" />
                                                </div> 
                                                <span class="hidden ml-3 text-gray-700 text-sm font-medium lg:block"><span class="sr-only">Open user menu for </span>Nguoi choi chim</span>
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
                                            <p class="text-sm font-medium text-gray-900 truncate" role="none">kaedeharayamamoto@gmail.com</p>
                                        </div>


                                        <div class="py-1" role="none">
                                            <a data-turbo-method="delete" class="hover:bg-gray-100 group flex items-center hover:text-gray-900 text-gray-700 block px-4 py-2 text-sm" href="/members/sign_out"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" class="mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5">
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

    <%@ include file="staff_header.html" %> 

    <main class="pb-8 pt-8">
        <div class="max-w-3xl mx-auto sm:px-6 lg:max-w-7xl lg:px-8">

            <div class="grid grid-cols-1 items-start lg:grid-cols-5 lg:gap-8">
                <div class="grid grid-cols-1 gap-4 lg:col-span-5">

                    <div class="sm:flex sm:items-center px-4 sm:px-0">
                        <div class="sm:flex-auto">
                            <h1 class="text-xl font-semibold text-gray-900">
                                Articles
                            </h1>
                            <p class="mt-2 text-sm text-gray-700">
                                Written and submitted by experts.
                            </p>
                            <p></p>
                        </div>
                        <div class="mt-4 sm:mt-0 sm:ml-16 flex flex-row items-center space-x-6">
                            <a class="px-4 py-2 text-sm text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2" data-turbo-frame="modal" href="/clubs/birds-in-ohio/invites/new">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen mr-3" viewBox="0 0 16 16">
                                <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                                </svg>

                                New article
                            </a>
                        </div>
                    </div>

                    <ul role="list" class="grid grid-cols-1 gap-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 mt-4">
                        <li class="col-span-1 flex flex-col text-center bg-white sm:rounded-lg shadow">

                            <div class="flex-1 flex flex-col p-8">
                                <div class="w-52 h-40 flex items-center justify-center overflow-hidden mx-auto flex-shrink-0">
                                    <img src="https://th.bing.com/th/id/OIP.28bL6wtSllVDL8PJKxtdnwHaE8?pid=ImgDet&rs=1">
                                </div>

                                <h3 class="mt-6 text-gray-900 text-sm font-medium">Nguoi choi chim</h3>
                                <dl class="mt-1 flex-grow flex flex-col justify-between">
                                    <dt class="sr-only">Title</dt>
                                    <dd class="text-gray-500 text-sm">Uploaded <span class="font-bold">May 15, 2023</span></dd>
                                    <dt class="sr-only">Role</dt>
                                    <dd class="mt-3">
                                        <span class="inline-flex items-center px-2.5 py-0.5 font-medium bg-green-100 text-green-800 text-xs rounded-full">Member</span>
                                    </dd>
                                </dl>
                            </div>
                            <div class=" border-t border-gray-200 bg-gray-50 overflow-hidden sm:rounded-b-lg">
                                <div class="-mt-px flex divide-x divide-gray-200">
                                    <div class="w-0 flex-1 flex">
                                        <a class="relative -mr-px w-0 flex-1 inline-flex items-center justify-center py-4 text-sm text-gray-700 font-medium border border-transparent rounded-bl-lg hover:text-gray-500" href="/clubs/birds-in-ohio/members/808">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eyeglasses" viewBox="0 0 16 16">
                                            <path d="M4 6a2 2 0 1 1 0 4 2 2 0 0 1 0-4zm2.625.547a3 3 0 0 0-5.584.953H.5a.5.5 0 0 0 0 1h.541A3 3 0 0 0 7 8a1 1 0 0 1 2 0 3 3 0 0 0 5.959.5h.541a.5.5 0 0 0 0-1h-.541a3 3 0 0 0-5.584-.953A1.993 1.993 0 0 0 8 6c-.532 0-1.016.208-1.375.547zM14 8a2 2 0 1 1-4 0 2 2 0 0 1 4 0z"/>
                                            </svg><span class="ml-2">View</span>
                                        </a>          </div>
                                    <div class="-ml-px w-0 flex-1 flex bg-lime-100">
                                        <form class="contents" method="post" action="/conversations?conversation%5Brecipient_id%5D=808&amp;conversation%5Bsender_id%5D=808"><button class="relative w-0 flex-1 inline-flex items-center justify-center py-4 text-sm text-gray-700 font-medium border border-transparent rounded-br-lg hover:text-gray-500" type="submit">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen mr-3" viewBox="0 0 16 16">
                                                <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                                                </svg><span>Edit</span>
                                            </button><input type="hidden" name="authenticity_token" value="RBoAJvfa7vxb8-RjHiX7A5s9KgRDw5PkRnAj4jpaB2XPA07U8AQWCYlM3ODPqulm_izLJH2jYeb7mHFhADviFQ" autocomplete="off"></form>          </div>

                                    <div class="-ml-px w-0 flex-1 flex bg-red-500">
                                        <form class="contents" method="post" action="/conversations?conversation%5Brecipient_id%5D=808&amp;conversation%5Bsender_id%5D=808"><button class="relative w-0 flex-1 inline-flex items-center justify-center py-4 text-sm text-gray-700 font-medium border border-transparent rounded-br-lg hover:text-gray-500" type="submit">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
                                                <path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z"/>
                                                </svg><span class="ml-2">Remove</span>
                                            </button><input type="hidden" name="authenticity_token" value="RBoAJvfa7vxb8-RjHiX7A5s9KgRDw5PkRnAj4jpaB2XPA07U8AQWCYlM3ODPqulm_izLJH2jYeb7mHFhADviFQ" autocomplete="off"></form>          </div>
                                </div>
                            </div>
                        </li>
                    </ul>

                    <div class="pt-6 flex items-center justify-between">
                        <div class="hidden sm:block">
                            <span class="pagy-info">Displaying <b>1</b> Article(s)</span>
                        </div>
                        <nav class="pagy-nav pagination" aria-label="pager"><span class="page prev disabled">Prev</span> <span class="page next disabled">Next</span></nav>
                    </div>

                </div>
            </div>

        </div>
    </main>


 <%@ include file="staff_footer.html" %> 

</body>
</html>

