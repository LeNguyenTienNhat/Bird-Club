<%-- 
    Document   : signin
    Created on : Jun 4, 2023, 2:39:04 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-full scroll-smooth bg-gray-50  antialiased"><head>
        <title>Sign In - ChimOwner</title>
        <meta name="csrf-param" content="authenticity_token">
        <meta name="csrf-token" content="CTzhkJS_jvvs_9JTMLMaFzbAKnrI6onIkrjmmY-V3l5Wo0ntajiI7WkuEms-AN1hkQ-mPLu2lIozYdrezS-9QQ">

        <meta name="action-cable-url" content="wss://www.bird.club/cable">
        <link rel="stylesheet" href="css/inter.css">
        <link rel="stylesheet" href="css/application-e28f118614ca4a1f17d351ebc8dde1991c2801620fc57b5bed8bdf702a5f10e7.css" data-turbo-track="reload">
        <link rel="stylesheet" href="css/lightbox-020432d3fc86fbb4b2dd26e6a1f8875311d74ec975db9bc2b15108926f952e7f.css" data-turbo-track="reload">
        <link rel="stylesheet" href="css/trix-ac629f94e04ee467ab73298a3496a4dfa33ca26a132f624dd5475381bc27bdc8.css" data-turbo-track="reload">
        <link rel="stylesheet" href="css/actiontext-dfc9b48c08497309387b4a0b3363f2eab057e4e90495f8d3ff1e2333132cc094.css" data-turbo-track="reload">
        <link rel="stylesheet" href="css/mapbox-fc5950363a3f029d3ba4df20815fe4a46c8f62c046cf2a032a333caa6e091555.css" data-turbo-track="reload">
        <script src="js/application-951dfa64380d0c18e6bed336edfce393f2a8c83a2b818269476b2d2271cd4b3c.js" data-turbo-track="reload" defer="defer"></script>
        <script src="js/activestorage-2be1208d0cfd359f5a555fbc65d29e0aa9ce544d38844eb59aef0f1213e55ade.js" data-turbo-track="reload" defer="defer"></script>
        <script src="js/actioncable-ca0a4aee29ae2d01089a4d5e10d0540c43c8e2038d85819b59029ddfa4ca5da5.js" data-turbo-track="reload" defer="defer"></script>
        <script src="js/actiontext-acde4d42660203a68336896e9c2d2c9865fd2ccc999f75671d83415e7c98c99e.js" data-turbo-track="reload" defer="defer"></script>
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="/site.webmanifest?v=M4K5PaEa4d">
        <link rel="mask-icon" href="fonts/safari-pinned-tab.svg" color="#5bbad5">
        <link rel="shortcut icon" href="favicon.ico">
        <link rel="stylesheet" href="css/inter.css">
        <meta name="msapplication-TileColor" content="#0d9488">
        <meta name="theme-color" content="#ffffff">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0,user-scalable=0">
        <script defer data-domain="bird.club" src="js/plausible.js"></script>
    </head>

    <body class="flex h-full flex-col">
        <div class="min-h-full">
            <div class="relative flex min-h-full justify-center md:px-12 lg:px-0">
<!--                <div class="relative z-10 flex flex-1 flex-col bg-white py-10 px-4 shadow-2xl sm:justify-center md:flex-none md:px-28">-->
                    <div class="mx-auto w-full max-w-md sm:px-4 md:w-96 md:max-w-sm md:px-0">
                        <div class="container-header">
                              <h2 class="mt-16 text-lg font-semibold text-gray-900">
                                Sign in to your account
                            </h2>
                            <p class="mt-2 text-sm text-gray-700">
                                Don't have an account? <a class="font-medium text-teal-600 hover:underline" href="">Sign up</a> for a free account.
                            </p>
                        </div>

                        <form class="mt-10 grid grid-cols-1 gap-y-8" id="new_member" data-turbo="false" action="/members/sign_in" accept-charset="UTF-8" method="post"><input type="hidden" name="authenticity_token" value="ZqSpHCen09U1xp88ejHGAmjetpW4WTyfFlsdhvzWQ9SCEG6ze3LJoPirgRm8L4mWkfuN0u4kc43hS_LaGmd5Zw" autocomplete="off">
                            <input value="true" autocomplete="off" type="hidden" name="member[remember_me]" id="member_remember_me">
                            <div>
                                <label class="mb-3 block text-sm font-medium text-gray-700" for="member_email">Email address</label>
                                <input autocomplete="email" class="block w-full appearance-none rounded-md border border-gray-200 bg-gray-50 px-3 py-2 text-gray-900 placeholder-gray-400 focus:border-teal-500 focus:bg-white focus:outline-none focus:ring-teal-500 sm:text-sm shadow-sm border-gray-300" type="email" value name="member[email]" id="member_email">
                            </div>

                            <div>
                                <label class="mb-3 block text-sm font-medium text-gray-700" for="member_password">Password</label>
                                <div class="mt-1">
                                    <input autocomplete="current-password" class="block w-full appearance-none rounded-md border border-gray-200 bg-gray-50 px-3 py-2 text-gray-900 placeholder-gray-400 focus:border-teal-500 focus:bg-white focus:outline-none focus:ring-teal-500 sm:text-sm shadow-sm border-gray-300" type="password" name="member[password]" id="member_password">
                                </div>
                            </div>

                            <div class="text-sm">
                                <a class="font-medium text-teal-600 hover:text-teal-500" href="/members/password/new">Forgot your password?</a>
                            </div>

                            <div class="pt-1">
                                <button type="submit" class="w-full flex justify-center py-2 px-4 text-base text-white shadow-sm border-transparent bg-teal-600 hover:bg-teal-700 focus:ring-teal-500 inline-flex items-center border font-medium rounded-full focus:outline-none focus:ring-2 focus:ring-offset-2">
                                    Sign in
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="hidden sm:contents lg:relative lg:block lg:flex-1">
                    <div class="absolute inset-0 hidden w-full flex-1 sm:block lg:relative h-full">
                        <div class="bg-gradient-to-br from-teal-600 via-teal-700 to-teal-500 w-full h-full">
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </body>
</html>
