<%-- 
    Document   : staff_events
    Created on : Jun 4, 2023, 3:21:27 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-full bg-gray-100">
    <head>
        <title>Events</title>
        <meta name="csrf-param" content="authenticity_token" />
        <meta name="csrf-token" content="ahyUHbKwmmr7zSFLLkzvePiJVwXBL4woYSFM9G8nKMgn3UlVf_owDxDiNS3QLvjzvqSyEyX4pnBqDc1tkk2xTg" />

        <meta name="action-cable-url" content="wss://www.bird.club/cable" />
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
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_homepage.html">Home</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_member.html">Members</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_blogs.html">Blogs</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm text-teal-600 border-teal-600 focus:outline-none" href="staff_events.html">Events</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_article.html">News</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_gallery.html">Gallery</a>
                    <a class="whitespace-nowrap py-4 px-1 border-b-2 font-medium text-sm border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none" href="staff_feedback.html">Feedback</a>
                </nav>
            </div>
            <div class="sm:hidden py-4">
                <label for="current-tab" class="sr-only">Select a tab</label>
                <select data-controller="select" data-action="change->select#change" data-select-target="menu" id="current-tab" name="current-tab" class="block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-teal-500 focus:border-teal-500 sm:text-sm rounded-md">
                    <option value="" >Home</option>
                    <option value="" >Members</option>
                    <option value="" >Blogs</option>
                    <option value="" selected>Events</option>
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
                            <h1 class="text-xl font-semibold text-gray-900">Events</h1>
                            <p class="mt-2 text-sm text-gray-700">
                                Available events hosted by Chim Owners.
                            </p>
                        </div>
                        <div class="mt-4 sm:mt-0 sm:ml-16 sm:flex-none">
                            <a class="w-full flex justify-center py-2 px-4 text-base text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2" data-turbo-frame="modal" href="">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="-ml-1 mr-3 w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                                </svg>

                                Add Events
                            </a>
                        </div>
                    </div>

                    <div>
                        <div class="lg:grid lg:grid-cols-12 lg:gap-x-16">
                            <div class="px-6 sm:px-0 mt-4 lg:col-start-8 lg:col-end-13 lg:row-start-1 xl:col-start-9">
                                <turbo-frame id="events_calendar" target="_top">
                                    <div class="text-center">
                                        <div class="flex items-center text-gray-900">
                                            <a class="-m-1.5 flex flex-none items-center justify-center p-1.5 text-gray-400 hover:text-gray-500" href="/clubs/birds-in-ohio/events?start_date=2023-04-30">
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class=" w-5 h-5">
                                                <path fill-rule="evenodd" d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd"></path>
                                                </svg>

                                            </a>    <div class="flex-auto font-semibold">May 2023</div>
                                            <a class="-m-1.5 flex flex-none items-center justify-center p-1.5 text-gray-400 hover:text-gray-500" href="/clubs/birds-in-ohio/events?start_date=2023-06-05">
                                                <span class="sr-only">Next month</span>
                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class=" w-5 h-5">
                                                <path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path>
                                                </svg>

                                            </a>  </div>
                                        <div class="mt-6 grid grid-cols-7 text-xs leading-6 text-gray-500">
                                            <div>M</div>
                                            <div>T</div>
                                            <div>W</div>
                                            <div>T</div>
                                            <div>F</div>
                                            <div>S</div>
                                            <div>S</div>
                                        </div>

                                        <div class="isolate mt-2 grid grid-cols-7 gap-px rounded-lg bg-gray-200 text-sm shadow ring-1 ring-gray-200">
                                            <div class="
                                                 rounded-tl-lg 



                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-01" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    1
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-02" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    2
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-03" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    3
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-04" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    4
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-05" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    5
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-06" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    6
                                                </time>
                                            </div>
                                            <div class="

                                                 rounded-tr-lg 


                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-07" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    7
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-08" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    8
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-09" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    9
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-10" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    10
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-11" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    11
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-12" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    12
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-13" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    13
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-14" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    14
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-15" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    15
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-16" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    16
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-17" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    17
                                                    <span class="absolute top-2/3 left-1/2 transform -translate-x-1/2 translate-y-1.5 bg-teal-600 w-1.5 h-1.5 rounded-full">
                                                        <span class="sr-only">Event Today</span>
                                                    </span>
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-18" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    18
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-19" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    19
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-20" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    20
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-21" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    21
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-22" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    22
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-23" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    23
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-24" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    24
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-25" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    25
                                                </time>
                                            </div>
                                            <div class="




                                                 font-semibold text-teal-600 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-26" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    26
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-27" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    27
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-28" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    28
                                                </time>
                                            </div>
                                            <div class="


                                                 rounded-bl-lg

                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-29" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    29
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-30" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    30
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-white text-gray-900 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-05-31" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    31
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-gray-50 text-gray-400 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-06-01" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    1
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-gray-50 text-gray-400 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-06-02" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    2
                                                </time>
                                            </div>
                                            <div class="




                                                 font-normal 
                                                 bg-gray-50 text-gray-400 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-06-03" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    3
                                                </time>
                                            </div>
                                            <div class="



                                                 rounded-br-lg
                                                 font-normal 
                                                 bg-gray-50 text-gray-400 
                                                 py-1.5 focus:z-10">
                                                <time datetime="2023-06-04" class="relative mx-auto flex h-10 w-10 items-center justify-center rounded-full">
                                                    4
                                                </time>
                                            </div>
                                        </div>
                                    </div>

                                </turbo-frame>
                            </div>
                            <turbo-frame class="lg:col-span-7 xl:col-span-8" id="events_list">
                                <ol class="space-y-4 leading-6 text-sm mt-4">
                                    <li class="relative flex flex-col bg-white sm:rounded-lg shadow p-6">
                                        <div class="">
                                            <h3 class="font-semibold text-gray-900 space-x-2 mb-4">
                                                <span>Giai dau chim chao mao FPT</span>
                                                <span class="inline-flex items-center px-2.5 py-0.5 font-medium bg-teal-100 text-teal-800 text-xs rounded-full">Tournament</span>
                                            </h3>

                                            <div class="flex items-start space-x-3">
                                                <div class="mt-0.5">
                                                    <span class="sr-only">Date</span>
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="text-gray-400 w-5 h-5">
                                                    <path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd"></path>
                                                    </svg>

                                                </div>
                                                <div><time datetime="2023-05-17">Wednesday 17th at  4:38pm</time></div>
                                            </div>
                                            <div class="mt-2 flex items-start space-x-3 xl:mt-0">
                                                <div class="mt-0.5">
                                                    <span class="sr-only">Location</span>
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="text-gray-400 w-5 h-5">
                                                    <path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd"></path>
                                                    </svg>
                                                </div>
                                                <div>FPTU HCMC</div>
                                            </div>
                                        </div>
                                        <div class="mt-4 space-y-4">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        </div>
                                        <div class="absolute flex-shrink-0 self-end flex top-4 right-4">
                                            <div class="relative z-30 inline-block text-left">
                                                <div data-controller="dropdown">
                                                    <div data-dropdown-target="button" data-action="click->dropdown#toggleMenu click@window->dropdown#hideMenu">

                                                        <button type="button" class="-m-2 p-2 rounded-full flex items-center text-gray-400 hover:text-gray-600" id="menu-0-button" aria-expanded="false" aria-haspopup="true">
                                                            <span class="sr-only">Open options</span>
                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class=" w-5 h-5">
                                                            <path d="M10 6a2 2 0 110-4 2 2 0 010 4zM10 12a2 2 0 110-4 2 2 0 010 4zM10 18a2 2 0 110-4 2 2 0 010 4z"></path>
                                                            </svg>

                                                        </button>

                                                    </div>
                                                    <div class="hidden z-10 origin-top-right absolute right-0 mt-2 w-56 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 focus:outline-none divide-y divide-gray-100" role="menu" aria-orientation="vertical" aria-labelledby="menu-button" tabindex="-1" data-dropdown-target="menu" data-transition-enter="transition ease-out duration-100" data-transition-enter-start="transform opacity-0 scale-95" data-transition-enter-end="transform opacity-100 scale-100" data-transition-leave="transition ease-in duration-75" data-transition-leave-start="transform opacity-100 scale-100" data-transition-leave-end="transform opacity-0 scale-95">
                                                        <div class="py-1" role="none">
                                                            <a data-turbo-frame="modal" class="hover:bg-gray-100 group flex items-center hover:text-gray-900 text-gray-700 block px-4 py-2 text-sm" href="/clubs/birds-in-ohio/events/140/edit"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5">
                                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                                                </svg>
                                                                Edit</a>
                                                            <a data-turbo-method="delete" data-turbo-confirm="Are you sure?" class="hover:bg-gray-100 group flex items-center hover:text-gray-900 text-gray-700 block px-4 py-2 text-sm" href="/clubs/birds-in-ohio/events/140"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5">
                                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                                                </svg>
                                                                Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="relative flex flex-col bg-white sm:rounded-lg shadow p-6">
                                        <div class="">
                                            <h3 class="font-semibold text-gray-900 space-x-2 mb-4">
                                                <span>Red whiskered bulbul meeting</span>
                                                <span class="inline-flex items-center px-2.5 py-0.5 font-medium bg-teal-100 text-teal-800 text-xs rounded-full">Tournament</span>
                                            </h3>

                                            <div class="flex items-start space-x-3">
                                                <div class="mt-0.5">
                                                    <span class="sr-only">Date</span>
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="text-gray-400 w-5 h-5">
                                                    <path fill-rule="evenodd" d="M6 2a1 1 0 00-1 1v1H4a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-1V3a1 1 0 10-2 0v1H7V3a1 1 0 00-1-1zm0 5a1 1 0 000 2h8a1 1 0 100-2H6z" clip-rule="evenodd"></path>
                                                    </svg>

                                                </div>
                                                <div><time datetime="2023-05-17">Monday 28th at  8:00am</time></div>
                                            </div>
                                            <div class="mt-2 flex items-start space-x-3 xl:mt-0">
                                                <div class="mt-0.5">
                                                    <span class="sr-only">Location</span>
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="text-gray-400 w-5 h-5">
                                                    <path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd"></path>
                                                    </svg>
                                                </div>
                                                <div>NVH Sinh vien</div>
                                            </div>
                                        </div>
                                        <div class="mt-4 space-y-4">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                        </div>
                                        <div class="absolute flex-shrink-0 self-end flex top-4 right-4">
                                            <div class="relative z-30 inline-block text-left">
                                                <div data-controller="dropdown">
                                                    <div data-dropdown-target="button" data-action="click->dropdown#toggleMenu click@window->dropdown#hideMenu">

                                                        <button type="button" class="-m-2 p-2 rounded-full flex items-center text-gray-400 hover:text-gray-600" id="menu-0-button" aria-expanded="false" aria-haspopup="true">
                                                            <span class="sr-only">Open options</span>
                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class=" w-5 h-5">
                                                            <path d="M10 6a2 2 0 110-4 2 2 0 010 4zM10 12a2 2 0 110-4 2 2 0 010 4zM10 18a2 2 0 110-4 2 2 0 010 4z"></path>
                                                            </svg>

                                                        </button>

                                                    </div>
                                                    <div class="hidden z-10 origin-top-right absolute right-0 mt-2 w-56 rounded-md shadow-lg bg-white ring-1 ring-black ring-opacity-5 focus:outline-none divide-y divide-gray-100" role="menu" aria-orientation="vertical" aria-labelledby="menu-button" tabindex="-1" data-dropdown-target="menu" data-transition-enter="transition ease-out duration-100" data-transition-enter-start="transform opacity-0 scale-95" data-transition-enter-end="transform opacity-100 scale-100" data-transition-leave="transition ease-in duration-75" data-transition-leave-start="transform opacity-100 scale-100" data-transition-leave-end="transform opacity-0 scale-95">
                                                        <div class="py-1" role="none">
                                                            <a data-turbo-frame="modal" class="hover:bg-gray-100 group flex items-center hover:text-gray-900 text-gray-700 block px-4 py-2 text-sm" href="/clubs/birds-in-ohio/events/140/edit"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5">
                                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z"></path>
                                                                </svg>
                                                                Edit</a>
                                                            <a data-turbo-method="delete" data-turbo-confirm="Are you sure?" class="hover:bg-gray-100 group flex items-center hover:text-gray-900 text-gray-700 block px-4 py-2 text-sm" href="/clubs/birds-in-ohio/events/140"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="mr-3 text-gray-400 group-hover:text-gray-500 w-5 h-5">
                                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16"></path>
                                                                </svg>
                                                                Delete</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                </ol>
                            </turbo-frame>
                        </div>
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
