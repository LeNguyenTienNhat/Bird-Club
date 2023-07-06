<%-- 
    Document   : member_fieldtrip_details
    Created on : Jun 4, 2023, 2:51:03 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html class="no-js"  lang="en-US" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#">
    <head>
        <meta charset="utf-8">
        <!-- Force IE to use the latest rendering engine available -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Mobile Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta class="foundation-mq">
        <link rel="icon" href="https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/favicon.png">
        <link href="https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/images/apple-icon-touch.png" rel="apple-touch-icon" />	

        <title>Events - Tournaments</title>
        <meta name='robots' content='max-image-preview:large' />
        <link rel='dns-prefetch' href='//www.birds.cornell.edu' />
        <link rel='dns-prefetch' href='//code.jquery.com' />
        <link rel="alternate" type="application/rss+xml" title="Birds, Cornell Lab of Ornithology &raquo; Feed" href="https://www.birds.cornell.edu/home/feed/" />
        <link rel="alternate" type="application/rss+xml" title="Birds, Cornell Lab of Ornithology &raquo; Comments Feed" href="https://www.birds.cornell.edu/home/comments/feed/" />
        <link rel="alternate" type="text/calendar" title="Birds, Cornell Lab of Ornithology &raquo; iCal Feed" href="https://www.birds.cornell.edu/home/events/?ical=1" />
        <link rel='stylesheet' id='tribe-events-custom-jquery-styles-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/vendor/jquery/smoothness/jquery-ui-1.8.23.custom.css?ver=6.0.6.2' type='text/css' media='all' />
        <link rel='stylesheet' id='tribe-events-bootstrap-datepicker-css-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/vendor/bootstrap-datepicker/css/bootstrap-datepicker.standalone.min.css?ver=6.0.6.2' type='text/css' media='all' />
        <link rel='stylesheet' id='tribe-events-calendar-style-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/tribe-events-skeleton.min.css?ver=6.0.6.2' type='text/css' media='all' />
        <link rel='stylesheet' id='tec-events-pro-single-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/events-single.min.css?ver=6.0.5.1' type='text/css' media='all' />
        <link rel='stylesheet' id='tribe-events-pro-mini-calendar-block-styles-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-mini-calendar-block.min.css?ver=6.0.5.1' type='text/css' media='all' />
        <link rel='stylesheet' id='wp-block-library-css' href='https://www.birds.cornell.edu/home/wp-includes/css/dist/block-library/style.min.css?ver=6.1.1' type='text/css' media='all' />
        <style id='global-styles-inline-css' type='text/css'>
            body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--darkgray: #767676;--wp--preset--color--mediumgray: #5f6368;--wp--preset--color--orange: #c5541c;--wp--preset--color--green: #587624;--wp--preset--color--blue: #12568f;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');--wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');--wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');--wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');--wp--preset--duotone--midnight: url('#wp-duotone-midnight');--wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');--wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');--wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}.wp-block-button .wp-block-button__link{--wp--preset--color--orange: #c5541c;--wp--preset--color--green: #587624;--wp--preset--color--blue: #12568f;--wp--preset--font-size--large: 1.5rem;--wp--preset--font-size--default: 1.25rem;--wp--preset--font-size--small: 1rem;}.wp-block-pullquote{--wp--preset--font-size--default: 1.5rem;--wp--preset--font-size--small: 1.25rem;--wp--preset--font-size--smaller: 1.125rem;}.wp-block-cover{--wp--preset--color--black: #000000;}.wp-block-group{--wp--preset--color--bluegray: #f3f7fb;--wp--preset--color--lightgray: #efefef;--wp--preset--color--gray: #5f6368;--wp--preset--color--darkgray: #767676;}h1,h2,h3,h4,h5,h6{--wp--preset--font-size--small: S;--wp--preset--font-size--medium: M;--wp--preset--font-size--large: L;}p{--wp--preset--font-size--small: S;--wp--preset--font-size--medium: M;--wp--preset--font-size--large: L;}body { margin: 0;--wp--style--global--content-size: 100%;--wp--style--global--wide-size: 75rem; }.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}body{padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;}a:where(:not(.wp-element-button)){text-decoration: underline;}.wp-element-button, .wp-block-button__link{background-color: #32373c;border-width: 0;color: #fff;font-family: inherit;font-size: inherit;line-height: inherit;padding: calc(0.667em + 2px) calc(1.333em + 2px);text-decoration: none;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-color{color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-color{color: var(--wp--preset--color--mediumgray) !important;}.has-orange-color{color: var(--wp--preset--color--orange) !important;}.has-green-color{color: var(--wp--preset--color--green) !important;}.has-blue-color{color: var(--wp--preset--color--blue) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-background-color{background-color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-background-color{background-color: var(--wp--preset--color--mediumgray) !important;}.has-orange-background-color{background-color: var(--wp--preset--color--orange) !important;}.has-green-background-color{background-color: var(--wp--preset--color--green) !important;}.has-blue-background-color{background-color: var(--wp--preset--color--blue) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-border-color{border-color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-border-color{border-color: var(--wp--preset--color--mediumgray) !important;}.has-orange-border-color{border-color: var(--wp--preset--color--orange) !important;}.has-green-border-color{border-color: var(--wp--preset--color--green) !important;}.has-blue-border-color{border-color: var(--wp--preset--color--blue) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}.wp-block-button .wp-block-button__link.has-orange-color{color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-color{color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-color{color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-orange-background-color{background-color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-background-color{background-color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-background-color{background-color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-orange-border-color{border-color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-border-color{border-color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-border-color{border-color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.wp-block-button .wp-block-button__link.has-default-font-size{font-size: var(--wp--preset--font-size--default) !important;}.wp-block-button .wp-block-button__link.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.wp-block-pullquote.has-default-font-size{font-size: var(--wp--preset--font-size--default) !important;}.wp-block-pullquote.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.wp-block-pullquote.has-smaller-font-size{font-size: var(--wp--preset--font-size--smaller) !important;}.wp-block-cover.has-black-color{color: var(--wp--preset--color--black) !important;}.wp-block-cover.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.wp-block-cover.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.wp-block-group.has-bluegray-color{color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-color{color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-color{color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-color{color: var(--wp--preset--color--darkgray) !important;}.wp-block-group.has-bluegray-background-color{background-color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-background-color{background-color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-background-color{background-color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-background-color{background-color: var(--wp--preset--color--darkgray) !important;}.wp-block-group.has-bluegray-border-color{border-color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-border-color{border-color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-border-color{border-color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-border-color{border-color: var(--wp--preset--color--darkgray) !important;}h1.has-small-font-size,h2.has-small-font-size,h3.has-small-font-size,h4.has-small-font-size,h5.has-small-font-size,h6.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}h1.has-medium-font-size,h2.has-medium-font-size,h3.has-medium-font-size,h4.has-medium-font-size,h5.has-medium-font-size,h6.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}h1.has-large-font-size,h2.has-large-font-size,h3.has-large-font-size,h4.has-large-font-size,h5.has-large-font-size,h6.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}p.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}p.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}p.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}
            .wp-block-navigation a:where(:not(.wp-element-button)){color: inherit;}
            :where(.wp-block-columns.is-layout-flex){gap: 2em;}
            .wp-block-pullquote{font-size: 1.5em;line-height: 1.6;}
        </style>
        <link rel='stylesheet' id='contact-form-7-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/css/styles.css?ver=5.7.2' type='text/css' media='all' />
        <link rel='stylesheet' id='bp-site-css-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/styles/style.css?ver=1678365708' type='text/css' media='all' />
        <link rel='stylesheet' id='bp-bce-site-css-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/styles/style.css?ver=1684846858' type='text/css' media='all' />
        <link rel='stylesheet' id='zotpress.shortcode.min.css-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/zotpress/css/zotpress.shortcode.min.css?ver=6.1.1' type='text/css' media='all' />
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/jquery.min.js?ver=3.6.1' id='jquery-core-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2' id='jquery-migrate-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/vendor/php-date-formatter/js/php-date-formatter.min.js?ver=6.0.6.2' id='tribe-events-php-date-formatter-js'></script>
        <link rel="https://api.w.org/" href="https://www.birds.cornell.edu/home/wp-json/" /><link rel="alternate" type="application/json" href="https://www.birds.cornell.edu/home/wp-json/wp/v2/pages/1248" /><link rel='shortlink' href='https://www.birds.cornell.edu/home/?p=1248' />
        <link rel="alternate" type="application/json+oembed" href="https://www.birds.cornell.edu/home/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents%2F" />
        <link rel="alternate" type="text/xml+oembed" href="https://www.birds.cornell.edu/home/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents%2F&#038;format=xml" />
        <meta name="google-site-verification" content="IGsvze-ViQg5tZuvTMIK4uTycXsQsaApdSmVuW0DhVg" />

        <script>(function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({'gtm.start':
                            new Date().getTime(), event: 'gtm.js'});
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        '//www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-P7854M');</script>
        <!-- End Google Tag Manager --><!-- SEO meta tags powered by SmartCrawl https://wpmudev.com/project/smartcrawl-wordpress-seo/ -->
        <link rel="canonical" href="https://www.birds.cornell.edu/home/visit/events/" />
        <meta name="description" content="The Cornell Lab of Ornithology offers a variety of programs and events for visitors of all ages. Please see our events calendar (below) or call 1-800-843-BI ..." />
        <script type="application/ld+json">{"@context":"https:\/\/schema.org","@graph":[{"@type":"Organization","@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization","url":"https:\/\/www.birds.cornell.edu\/home","name":"Birds, Cornell Lab of Ornithology"},{"@type":"WebSite","@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-website","url":"https:\/\/www.birds.cornell.edu\/home","name":"Birds, Cornell Lab of Ornithology","encoding":"UTF-8","potentialAction":{"@type":"SearchAction","target":"https:\/\/www.birds.cornell.edu\/home\/search\/{search_term_string}\/","query-input":"required name=search_term_string"}},{"@type":"Person","@id":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/#schema-author","name":"bce_admin_user","url":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/"},{"@type":"WebPage","@id":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/#schema-webpage","isPartOf":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-website"},"publisher":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization"},"url":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/"},{"@type":"Article","mainEntityOfPage":{"@id":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/#schema-webpage"},"author":{"@id":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/#schema-author"},"publisher":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization"},"dateModified":"2023-03-09T08:18:44","datePublished":"2018-10-04T10:44:16","headline":"Events | Birds, Cornell Lab of Ornithology","description":"The Cornell Lab of Ornithology offers a variety of programs and events for visitors of all ages. Please see our events calendar (below) or call 1-800-843-BI ...","name":"Events","image":{"@type":"ImageObject","@id":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/#schema-article-image","url":"https:\/\/www.birds.cornell.edu\/home\/wp-content\/uploads\/2018\/11\/observatory.jpg","height":960,"width":1280},"thumbnailUrl":"https:\/\/www.birds.cornell.edu\/home\/wp-content\/uploads\/2018\/11\/observatory.jpg"}]}</script>
        <!-- /SEO -->
        <meta name="tec-api-version" content="v1"><meta name="tec-api-origin" content="https://www.birds.cornell.edu/home"><link rel="alternate" href="https://www.birds.cornell.edu/home/wp-json/tribe/events/v1/" />			<link rel="preload" href="https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/hustle-ui/fonts/hustle-icons-font.woff2" as="font" type="font/woff2" crossorigin>
        <script>
            document.documentElement.className = document.documentElement.className.replace('no-js', 'js');
        </script>
        <style>
            .no-js img.lazyload { display: none; }
            figure.wp-block-image img.lazyloading { min-width: 150px; }
            .lazyload, .lazyloading { opacity: 0; }
            .lazyloaded {
                opacity: 1;
                transition: opacity 400ms;
                transition-delay: 0ms;
            }
        </style>
    </head>



    <body class="page-template-default page page-id-1248 page-child parent-pageid-1229 wp-embed-responsive theme-green nav-column tribe-no-js">
        <!--Header-->
        <%@ include file="member_header.jsp" %> 

        <main id="tribe-events-pg-template" class="tribe-events-pg-template"><div class="tribe-events-before-html"></div><span class="tribe-events-ajax-loading"><img alt="Loading Events" data-src="https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/images/tribe-loading.gif" class="tribe-events-spinner-medium lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="><noscript><img class="tribe-events-spinner-medium" src="https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/images/tribe-loading.gif" alt="Loading Events" /></noscript></span>





            <article id="article" class="post-10000630 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent">

                <div class="content-container page-wide">

                    <section id="content" class="content" aria-label="Main content">

                        <div id="tribe-events-content" class="tribe-events-single tribe-blocks-editor">

                            <h1 class="tribe-events-single-event-title">${tournament.getName()}</h1> 


                            <div class="tribe-events-schedule tribe-clearfix">
                                <h4 class="tribe-events-schedule__datetime">
                                    <span class="tribe-events-schedule__date tribe-events-schedule__date--start">
                                        ${tournament.getStartDate()} - ${tournament.getEndDate()}</span>

                                </h4>

                            </div>



                            <div class="is-layout-flex wp-container-4 wp-block-columns">
                                <div class="is-layout-flow wp-block-column" style="flex-basis:66.66%">
                                    <figure class="">
                                        <img src="data:image/jsp;base64,${Base64.getEncoder().encodeToString(img)}">
                                    </figure>
                                    <br>

                                    <dt><strong>Focus</strong>
                                    <dd>${tournament.getDescription()}<dd>
                                        </dt>
                                    <dt><strong>Note</strong>
                                    <dd>${tournament.getNote()}<dd>
                                        </dt>
                                        <div class="is-layout-flex wp-block-buttons"></div>
                                        <style>
                                            .image-row {
                                                display: flex;
                                                flex-wrap: wrap;
                                                justify-content: space-between;
                                                margin-bottom: 10px;
                                            }

                                            .image-wrapper {
                                                width: 70px;
                                                margin-bottom: 10px;
                                            }

                                            .image-wrapper img {
                                                width: 100%;
                                                height: auto;
                                                cursor: pointer;
                                            }

                                            .lightbox-modal {
                                                display: none;
                                                position: fixed;
                                                z-index: 9999;
                                                left: 0;
                                                top: 0;
                                                width: 100%;
                                                height: 100%;
                                                overflow: auto;
                                                background-color: rgba(0, 0, 0, 0.9);
                                            }

                                            .lightbox-image {
                                                max-width: 800px;
                                                max-height: 800px;
                                                display: block;
                                                margin: auto;
                                                padding: 100px;
                                                margin-top: 50px;
                                            }

                                            .close-modal {
                                                color: #fff;
                                                font-size: 30px;
                                                font-weight: bold;
                                                position: absolute;
                                                top: 20px;
                                                right: 30px;
                                                cursor: pointer;
                                            }
                                        </style>

                                    <dt><strong>Media</strong>
                                        <div>
                                            <c:choose>
                                                <c:when test="${tournament.getStatus().contains('ongoing') || tournament.getStatus().contains('finished')}">
                                                    <c:choose>
                                                        <c:when test="${not empty gallery}">
                                                            <div class="image-row">
                                                                <c:forEach items="${gallery}" var="imageBytes" varStatus="loop">
                                                                    <div class="image-wrapper">
                                                                        <a href="javascript:void(0);" onclick="showImage('${Base64.getEncoder().encodeToString(imageBytes)}')">
                                                                            <img src="data:image/jpg;base64,${Base64.getEncoder().encodeToString(imageBytes)}" alt="Image">
                                                                        </a>
                                                                    </div>
                                                                    <c:if test="${loop.index % 5 == 4 && loop.index < gallery.size() - 1}">
                                                                    </div><div class="image-row">
                                                                    </c:if>
                                                                </c:forEach>
                                                            </div>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <p>No images available. Check back later for upcoming events.</p>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:when>
                                                <c:when test="${tournament.getStatus().contains('pending') || tournament.getStatus().contains('formClosed')}">
                                                    <p>Upcoming event. Images will be available during the event.</p>
                                                </c:when>
                                            </c:choose>
                                        </div>
                                    </dt>

                                    <!-- Lightbox Modal -->
                                    <div id="lightbox-modal" class="lightbox-modal">
                                        <span class="close-modal" onclick="closeModal()">&times;</span>
                                        <img id="lightbox-image" class="lightbox-image" src="" alt="Lightbox Image">
                                    </div>
                                    <script>
                                        var galleryImages = [];
                                        var currentImageIndex = 0;

                                        function initGallery(images) {
                                            galleryImages = images;
                                        }

                                        function showImage(base64Image) {
                                            var lightboxImage = document.getElementById('lightbox-image');
                                            lightboxImage.src = 'data:image/jpg;base64,' + base64Image;

                                            var lightboxModal = document.getElementById('lightbox-modal');
                                            lightboxModal.style.display = 'block';

                                            currentImageIndex = galleryImages.indexOf(base64Image);
                                        }

                                        function changeImage(direction) {
                                            if (direction === 'prev') {
                                                currentImageIndex = (currentImageIndex - 1 + galleryImages.length) % galleryImages.length;
                                            } else if (direction === 'next') {
                                                currentImageIndex = (currentImageIndex + 1) % galleryImages.length;
                                            }

                                            var lightboxImage = document.getElementById('lightbox-image');
                                            lightboxImage.src = 'data:image/jpg;base64,' + galleryImages[currentImageIndex];
                                        }

                                        function closeModal() {
                                            var lightboxModal = document.getElementById('lightbox-modal');
                                            lightboxModal.style.display = 'none';
                                        }
                                    </script>
                                    <style>
                                        .container {
                                            display: flex;
                                            justify-content: center;
                                        }

                                        .column {
                                            flex-basis: 30%;
                                            padding: 20px;
                                            background-color: #f2f2f2;
                                            border: 1px solid #ccc;
                                            border-radius: 5px;
                                            margin: 10px;
                                            margin-bottom: 30px;
                                            text-align: center;
                                            
                                        }

                                        .first {
                                            height: 350px;
                                        }

                                        .second {
                                            height: 300px;
                                            margin-top: auto;
                                        }

                                        .third {
                                            height: 250px;
                                            margin-top: auto;
                                            
                                        }

                                        .column h2 {
                                            margin-top: 0;
                                        }

                                        .column p {
                                            margin-bottom: 0;
                                        }
                                        .gold {
                                            color: gold;
                                        }

                                        .silver {
                                            color: silver;
                                        }

                                        .bronze {
                                            color: #cd7f32; /* Bronze color */
                                        }
                                    
                                    </style>
                                    <dt><strong>Results</strong></dt>
                                    <c:if test="${tournament.getStatus().contains('finished')}">
                                        <div class="container">
                                            <div class="column second"style="position: relative">
                                                <h2><i class="fas fa-medal silver"></i></h2>
                                                    <c:forEach items="${list}" var="bird" begin="1" end="1">
                                                    <p>${bird.bird.name}</p>
                                                    <p>${bird.score}</p>
                                                    <img src="data:image/png;base64,${Base64.getEncoder().encodeToString(bird.bird.profilePic)}"
                                                         <!--<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANkAAADoCAMAAABVRrFMAAABdFBMVEX///+OfHABAQHbzMX/gxVuX1jMnqAuBwD//v////1TSkX8///+fgDez8iOfHHay8SKd2r/ghJmV1BxYlpVVVWMfXEVAABSSULXy8TImJjLn5+IiIhJSUlPT08sLCyNeG4eAADMnqH58/MiIiLu7u7T09M6OjoSEhKnp6f49/PCuLK4rqWJfHOSe23/0qElAAAsAAD4plenmZL3uY2XhXl8bmSWjIfNvrfj2dTkz87Srq/MzMxfX18aGhp1dXWwsLCrmpnFtKmlloqBf3WmfmHDf0jfgDHtgR/Ufzu1fligfmjLgkPlfyuLcWb7iR/7mETHqZb6vHz579r3qV73xpLCk3PpupD5tHKCX031lENRLi6kbUD+yZm3fVH7jzNGIBh8ZEzOoHg7JCKTcFereWPSjVdwUkLImX381ZlCOTF2foGujW5AQVGQWCg+TEh3UTqraDP24Mz20LHrqnziupv1587lw7nnpF/nr4f41KndwsOUlJRAvwunAAAOL0lEQVR4nO2diXvaRhrGAQOWOkJIYFwOOxhZ2ICAxKoBccRpiBs3rY3XtevUu1l3u93tJtvt9kiPLf7n9xuJGx2ItJJI53UewOixM79837zzzYHi8xERERERERERERERERERERERERERERERERERERERERF5UPRYbjeFaAGJSrJUkrBKjbxYdLs5by4KP4jt9/2cJnbwXJaSIlxZ4axEvmLykOMqflXc48ah9iqb5bjD9sqGDiIiSBznH6tbkln1RSLhZyF+koh9xe12LiG6NMWVyJakrn9SwLaScVPK3BRHIiuVpsn8FY5Nut1M+yqdsew0B5uYeQNSssJ1i6vlJLSc9S8mzq+43VhbkrlFyfxZruF2a21I5rC1s5BuiUSiXK74Z/NwOmyS2+1dWBKAsf7EkzKAlYEMs5miySvS1fJnWX82cfzB05NekOdPTj98VimzFTO8FUErZsuJjz4GJj6oioevp8dHlUrCLGput3oRSdzx0yEVBuMZBuBOK6Yp6X00RItnEK8xF9M7Pzg47wHqMWsSNGwjlNuNNxNFoz+dTHLdXlRVXZ0z/LMnlbIx2lnJ7cabCqFPeL43Jru8ql59evzl8XW1+pwJPjMBA7S82603E43eY0ZcQQbAju9v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"-->
                                                         alt="Profile Picture"
                                                         style=" width: 120px; height: 100px; bottom: 0; ">
                                                </c:forEach>
                                            </div>
                                            <div class="column first"style="position: relative">
                                                <h2><i class="fas fa-trophy gold"></i></h2>
                                                    <c:forEach items="${list}" var="bird" begin="0" end="0">
                                                    <p>${bird.bird.name}</p>
                                                    <p>${bird.score}</p>
                                                    <img src="data:image/png;base64,${Base64.getEncoder().encodeToString(bird.bird.profilePic)}"
                                                           <!--<img src="data:image/png;base64,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"-->
                                                         alt="Profile Picture"
                                                         style=" width: 120px; height: 100px; bottom: 0; ">
                                                </c:forEach>
                                            </div>
                                            <div class="column third " style="position: relative">
                                                <h2><i class="fas fa-award bronze"></i></h2>
                                                    <c:forEach items="${list}" var="bird" begin="2" end="2">
                                                    <p>${bird.bird.name}</p>
                                                    <p>${bird.score}</p>
                                                    <img src="data:image/png;base64,${Base64.getEncoder().encodeToString(bird.bird.profilePic)}"
                                                         <!--<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEBUSEhIWFRUVGBcXFxUXFhUXFhoYFhYXFxcYGBoZHSggGBolGxcXITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGy0lICYtLS8tLy4tLi0tLS01LS0tLy0tLS8tLS0vLy0tLS0tLSstLS0uLS8tLS0tLS0tLS0tLf/AABEIAPQAzwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAAAQMEBQYCB//EAEgQAAIBAgQDBAQLBgQEBwEAAAECAwARBBIhMQVBURMiYXEGMoGRFSNCUlRicpKTodIUM3OCscFDU6LwNIOj0SRjZLKzwvEW/8QAGwEAAQUBAQAAAAAAAAAAAAAAAAECAwQFBgf/xAA6EQABAwIDBQUGBQQCAwAAAAABAAIRAyEEMUEFElFhcSKBkaHwEzKxwdHhBhQVQlIjYpLxcuKCssL/2gAMAwEAAhEDEQA/APcBS0UUIRRRRQhJelrk0ooQlooooQiiikJoQk51SeivGDiYbvYSWDEDTuSXaMjwy92/VGq8ArCYbDtGqGI5JIA0QNr3EbZCGHykYIpI0+SRYgEZ20Md+TNN7vcJLXcRaQfIyOGV1NSpe0kDPRWuHxxPECWbuMJIYxc2umVjp1JWe56IvStFFIGF1IIuRcG+qkqw8wQQfEViYo5HjLWWOQSvKvezKGMpkXUWJXWx0BIuNL13wDFS4eJCYzZlBliBGZJSB2jITZWu1yQbXN2BuSGpYbbdHecyq797gDpEy2/S3cJiZUj8M6AQNB4rcUl6g4DikM37uQEjUobq6/aRrMvtFTa3QZEhVV1RSClpUIooooQiub0pNAFCEtFFFCEUUUhoQlooooQiiiihCKKKKEIooooQikApaouK8SYsYYTYj95JoclxcKoOhksQddACCb3AMNevToUzUqGAPXoJzWlxgKVjuMRxtk1eS1+zSxax2LXIVAbGxYi9ja9UaB2lkkZVQSZTlVmfvAZSxYgbqEGUCwy7m9VDcUsWiwkTSkE5pMpMWb5RMjECV7796+9zcWps8PxUmskgHQCWRbeGWJVuPNm864zaO1KuKb7MgNZMwbvPPl3X5kK/Rotbeb+Xkr8ClpjAROkarI2dhpm11Fzlvckk2tc8zc86kVzzhBiZ5qwCouJwSPa6gkG4uNj1U7qfEURTYiL1JmI5LJ8avmSSJD9+np5lRWd2CqoLMxNgABcknpaoOG4zGxAYPHc93tAAGvtYgkAm+itZvCrmFxOKo3ouIHLLwyJ7ja6Rwa73hPriraD0jcaSw3+tEwPtKPlyjwDMas8FxmGUhUkGY7IwKPpuQjgMR42tVK8YPKo2JwYYWYB16MAfyNbOH/EtZtqrQ4f4n6eQULsJTd7pjzW1orGYTGzQnuOXXnFISfuObsp8DmGlgBvWk4ZxFJ1utwRoyNo6now/uLg8iRXT4PaNDFj+mb8DY/ccwSqdWg+l73ipwFLRRV5QoooooQiiiihCKKKKEIoqm47xQxZY4wDK9yLglUVbXdrWvqQAtxcnoCRA4Li5u2VHlaRXVz31jBBW1spRV6ne/s50346iyu3Dk9o+VpudJHq4mQUnFhfotRRRSXq4o0tFFFCFU8axxjQKlu1kuqc8oHrSEcwo9hJUaZqqIYFVco2131JJN2LE7kkkknck11JL2szy8rlI/sISCf5nzG43UJ0rkK0kghjNmIzO9r9mlyL2OhYkEKDpoTqFIPEbVr1cdjBhqOTTA/5D3ielx0kjO9+i0U2bxSPKiAAsqjYAkD2CnKgD0o4dh2KIjS8pJlTtL+LOxzS/y5hyG1qkIYhKRAQYXSOZMvqjtDIDkGwU5AbdWam7R/D1TB4b27nTlMtIztYyZuR1F+SSli21H7o+MqRSUUVziupCt9DqKrsTwOFgcq9ne9+zACm++ZCMjX8Rfxqwwsc0y54Y1yH1XkcoHHJkCqxK+JtfcXBBrhnZGCSpkZrhSGzRsQLkK9h3gATlYKbAkAgEjSds7G0aftdxwHrNsz4hQiqwmAVRJipMEQJ+9hyQO1FyIr7Zr3Mcd+pIX51tF0VKV01riNAoCgWAFgOgGwHhVOq7euRB15840Px8ZeEksd/OoZDKweNski7Na4tzVh8pDzHtBBAIn1GxC2N+tLQqvpvDmGCLgjT1/tSthw3TktDwjiInQm2V10dL3ynlY/KU7hufgQQLKsL2rRuJoxdl0K6fGJzQ30vzU8mA5Eg7PC4hZEWRDdXAZT1BFxvt5V6FsvaDcZSk2cPeHzHI/UaLJxFA0nRpon6KKK01AiiiihCKKjTYyNHSNnUPJfIpIu2UXNhztp7xXeJmyRs52VS3uBNAuYQse0nazyyfOcqvhHESgAPQnO4/iVMw75cRh/F2T2GGU/1Rag8IjKxop3VFU+YABqRjSQmcXvHlkFtz2bByo8wpHtrzqljZ2i3EONi+b/xJjyatarTilucvNa8mgCuY2BAINwdQeoO1d16KslFQeMYgxwSMujZbJ9tu6n+oipE86opd2CqoJLHQADcms7jZ3xAGYdnDmVlS3ffIwZWe/qDMAco10FzqVFTGY2nhaZe430HE/IaTlcDMgF7GF5gJgZIo98qRrueSoP7AVTcS4llwpitaWe8kwPyYyVRUOu2UhTbQ9nJ86rDiUMsi5FCWut7swuAwJXRDYG1jvoTWY45gMX2xn7K4yqvxTdpYLmOqlVZtWOgU71z34UOEpVS/EVGhxsN4wIsczbtGLTNsrqXaJq+zim0np4fBVvpj6TYXsIYsPGO2iJExMeQgKj31A72ZoyRbYVovQVX7KRm9UPkj+wLyN/1ZZR7BXmb8FZsQZM4MecssKKFLSMw7htYXz2GuvLSvZuD4LsIEi3KizEbFiczn2sSfbWv+Laz6ODGHebvfIGfZbMnXNxbHQ81V2e1r6vtG6Ng6XMW0uIM9yl01NF2jRxHaVwjfYys7g+DKhX+anqMHKq4mPMbC0hB5Zu6B+TNXE7JpCpjaTXZTPgCfktisYYSs76acVfE4oYGJssYZI31IDyPbRrbxqGAtzJYEd0VQcW4S/D5WSN1zZQwyjKrEapnXbRhodbWuOhynppjSIjNmILzCS4vqWLyjUbWbKfZVX6KcXnxGJmeZ2kLICWZmY3UhV1Y32J91ew0w1r24ciQR2rC5PqFyr95zHVgbg25AW89V7twzGdtBHMBbtEV7cxmUGx8Rt7Kk1WejP/Cw/ZPuzG35VaV4riqQpV6lMGzXOE9CQurpuloPEBFMYnYU/UfEnYVC25UrBdJENL+NuvK/vqf6PYgrI0J9VgZE20NwJV0FvWZW6ku/SqtWtXDzlXik/wAuRCeQyG8ch05BHc+YFb2ycYKOIYOPZPfr4wUzE0t5h8VuqKKK7xYyKKKQ0IWK4z8ZiJ7kqUMcasNxlRZlZfrB5Cf5RVvHjDPgpgRaUJJHIo2D5DqPqsCGHgwvreqzGR5cXPf5UiOPs9jEt/vI3urppTDIJ1BItlmQAkvHqbgDUuhJIGtwXFrsCOVobSOG2pUZWPZc7wy3T0IgHuJNlfqUt6g0tzj/AGm8C1xcbEA1LvVbwcgIqg5gqlAwNwwTQODzDABgejCpmJxCxrmY2F7CwLEk8gqgknyHI1ydWi6nUNIi4JEcxYq45wPa4q09GpvizCd4TYfwzrER4Be5fmY2q7rF4XiKBxiEbRO5MCCrCNrHvK1iChs+o9XPb1q2leibJxf5nDNc73h2XdRr3iD5aLJrM3Xcln+Lv2k4jP7uILI45M5J7IH7OUtY8zGeVR2a5ua6P77FfxU9wgg//fbTdclt7EGpiC3QT5Et+RP/AJFXcM2GSlqnl4mzi8RVY9u1YZs9t+xQEZh9ckL0DCu+P9oyrGkburk9plKjuDdLswAzEgfZzc7VT4/FmMgzoYQdFLGPJYC9u4xCADrYe+qWFpM951zo35mL93yurdJjXHtGE3iMBG8olbO0gt8YXKNpsSIsq3F9Lg1bcK4kwcRSnMG/dyG1775Htz6NztY6gFoAOmlcyoGBB59NCCNQQeRBsQeRFT1X+2ADzYCBlYZwOA5C3RXX4SnuncEH58+K1dVmNxIMkZQM+VnDZFZgAVO7AWvmVRa99a54bxYNaKayyHQE6JJ4r0JG6b72uBerWqmHquwdYVIlwy4ZEd4M8lmVGEgtNl5bxL0cmliaJ8NKUJIBGQmynuMAGuDYA2t4VUcN4WmCVgwkQk6tMjR3tsFzKARvtfevaaGAIsRcHkdq6rD/AI2xDagfVosdHDeaY6y4eSy6myGFpa17gD0I+A+KicHw5iw8KHdI0U+aoL/neplRY8Aqfu+59Uep9zYfy2PjT97DX8q415LnFxMkm/XVazeASs1heojNc3pZHvXFKBCsMZCKZxsOeJ0+cjL71Ip4USNZSeQBP5UskXGafnZbDBT9pEj/AD0VvvAH+9SKg8FQrhoVO4ijB9iCpEkyqQGZQW0AJAJPhfevWDcrmk9RRRTUqzPpNh8sscw2Ydk58bloj4C5dfEyLTStcXrqfj0EyMjxTdk4/eBVNwdVdQjGQHYg5bjQ6VB4diL3QsrEah1IKupuFkW3JrHTkQw1tXE7fwzKjvzNEhwyfBBg5AmOIt1A1K0sO4hu44RqOmqg/szYfEF11hlYErzilGlx/wCW4sPqlRybuzOKjWFuQk92aKVQfeQP5qmTShFLMbAC5PhUMyxYhGiV7Ei9iCJEIN1bI1mFmAIuOVYO+55D39CeXPmMufW6nkAQEsuCDgOhySDQPa+nzXHy0PT2gg2In+inFNThJBkkjGZFJveMG1lOmZVJABsO6Vv3gwEThrkjvd1tmUa2Yb+w7g8wQa7xuCDlG2eNs8cg9ZG2uPAi6ldiCQa1Nn4ypga2+8HcNj0492Y62zvFiKYqZZqXiEy4jEL88xSjyMYiA98J94pumcdxDPldlyzQhs6i9pIWtnki+dlIRiurKAwscylngb6j30m3WD8wKrLseJaRkbne794meEhNwx7MHMIrzD0p4x2rs3yFGe31B3o19otIefejGuWt/wCkUhXB4kg2IhlIPT4s6+zevPRwlpmkF2fM8mkEfaWGY5Q0hGRDlyjKRpbeodmNptJqPOXr18VoYUAOLzp8fXO+SawMBiUBHZDzyHukk3Y5DdN78qscPxOdjlTJKdj3WQDxeQEgeVr9AasMN6NuRdsMCf8A1EwYHzWLMv5VaR8AlbSSURra2SFNQByDvpb+WtPFY7CuEkAnif8ArJ8wFeq4qhk0R0mfLszzJPOVT4qNp2XDr6zesU2Uc3v9UbH51hW6qLw/h0cC5Y1tfckkux6sx1P9uVSqwMTWFSA3IT5/6H1WfXre1NrAZff1ZLSUU72f+7XqFjHPyUEwm6KCKSmm1kJuSIHzqNaptRJT3jTmFTUyclwaYxwzRsmxk+LH2pSI1/NhT9SeFQdpiEHKMdq3nqsYI8SWYfw60NnYf8xiWM0kT0Fz5BJXfuUyVrrVjpwmIkllZVZXsiXAIMSXAOuhDO0jA81ZatOP4w/8PGbM4vIwNikZuNCNQ7WKr07zfJsYSqAAAAABYAaAAbAVv/iTHjdGGabkgu5agd5v0A4rNwtMzv8AgpPoviT8ZAxJ7PKyXuSEkzAKSd7MjgeGUVoqy/o5/wAS38IX+/3f/tWorb2XWdVwdN7s4+BInqYvzUOJaG1XAerSsMIDDI0JH7u2TxiN+zI8gMp8UPIimuJcJzsJoX7KVTmBt3HuACsq8wQF7ws3dXfKBWp41wztlBWwkS5RjtrbMjW+Q1hfxAO4FUGDnvdWBVlNmU+srb2PvBBGhBBFwRXK7YwVTCVjWpe66e6c2nkdBkRa8Xu0agqsAOY9So0szTQuuQrMtiYyflKQy2bZkYrYN53sQQOokjmCkjMpGZSbgg8iOat7iK5xuIk7bs0Ma2QOGeNnLXJVgtnWwWy339cbaXgyGeJs4hzoxu4hNyDzkVGsRrugLX3Gtw2Q0SLW1F+XHplecxE3U7TAvkVZYjCOpDxkMQArK98zKt7WfmwubZupu2ukuPEZtCCPA7+2m8FjFlW6kHkeoPMEHVT1B1FPlb702rXe4bjxcW4Hv9fJI0ALiaEOLHkbggkMpGzKRqp8RVRHLJhWKuM+G3WRRYxHmJEAsI+YZe6uuiKBa7FFMbXc1hp5tN458RwPMZ5GRZJuiZTbBXUg2ZWBBG4IIsQfAiu4ogqhVAVQLBQAFA6ADYVTYmPs3y4bVjq0O0ag/Kzf4HkL3sbKTc1Kj4nZgkgKMdAr2F/ssO6/sJPW1O9nAkX1j5kdNRbiUWJ9fFWJNJTQnFdiUdagublP3SNF1RSXHWlpqSUU6XG/tpuuS4HOpGVCyQPXrw4hNiV0xpKaM486aklJ8qQgm5UjWFOSzchUeikkkCgsxAAFySbAAcyae1qmADQiWQIpZthrtc+4ak+AqZhpmw6FAAcVN8YynVYlOidoQdlAsFB77Z7WBZlpcNO0p7YWSNNUkcWUW/xddHI+SD3VPebMwyLNw+MjUHIJHv3mdI3fMTu2e3xh0GxJ0A6VuUq/6fTJYJqm0fwH9395P7f22Bi7TQrf1TH7fj05KXh4coOpZmOZ3b1mY2uze4Cw0AAAsABXU5sppYpAyhlIIYAgjYg6giouPxGUXsSRYBRuzMQFUX5kkAeJrDO/UfeS4nvJJ+JPmp2AdysfRWK8k8nL4uL2oGkJH4wH8taWqLDumDw6Ruc8huxVNWd2JZyoJ0XMx1YgAEAkVm/STi+KWNp0PxiW7OFCcneIVs17dqcrE94WFhYAi59DZWo4GnSwzz2uyIFzJsTyEyb9BeyzS11ZznjK63eJmCIzt6qKWPkouf6VjOIYmSch1gRHA0btSTl3CuuQK+p2zDKSbNqb7dhcWOoPKsZPhWwsgjNzGdInOxH+Wx+eBtf1gL6kNaLbT8QyhvUgC394ImR04cYuLEEAFLhQwug56aXVfDi1ntFKrwTqSVDWDXG7RN6sqWOtrixsQNqkYfGNGwSYBWJsGF+zc/VJ2b6h13tmAvU2WJJVyuoZTyYAi420PMdarOJRsXEJcrGyd0ZUfOQTnVzMrA93IQNz3jrbThQ4PtEcuHQ3PcZOZnVaAkGFZSYRHbPazbZ10ew2BI3Hgbjwp5R438apoMDiIjeKdZE/y5QQb+EqXsPAofC1W0MjH1kKnzDKfIjX3gUyo2LB0j1ob+Fkapyo2NxBGVEt2j3tfZQLZnI5gXGnMso0vcSah4DvM8p5nIvgkZK/m+c35gr0pjLdrh8fV+5Ib2T+Gw6ouVfMk6lid2Y8ya7ljVlKsoZToVIBB8wd66pabvEmdUsKvbheX91IyfVPfj+62oHgrKKaYTLvGJB1jYAnzV7AD+Y1aUU/2pOd+v1t5pQSMiqg8QQeuTH/ABFaMexmAU+wmpEbhhdSCOoNx+VWFRJeGQscxhjLfPygN94a0u+3n8foniqU3S1z8ER8jIP+dP8A0L2qu4hw1hLHbETJE/dOVlJEmpUEup7jC465lQA9409ga60x1H0lK6tGisq4mlVBdmCjqxAHvNRj6NKfWxOLb/nFf/YFp2D0cwqnMYVY9ZC0p87yk0rfZfuce5v1cI8D0SGsdB5qvxnHgBbDxSYl9gsY7t+WZz3VX621MwcExGIIfGFAAQywi7xqfFQbSOOTOWGlwi1qlUAWAsByG1KTTjiWttSbHMkl3jYDubOhKiO873j3aevLkokXDkBDNeVhqGlOex6qtsqH7IFLxLGdmtlGZ2OVF+cx2HluSeQBPKq7G+ksAJRJIiwNjeWNEU9Hcmy8tBdtdq6wOIhU9o0wkkItmUEqo0JVAL2FwCTe5sLnQANFF5u4E8BH2sPDkiQMvXVS+0TDQKHcAIqqWOlzYC/mTy6m1R+FvJIwmyGMC/ZiRbOLixkyHUMQSBmtlB1DZrLOhEclpAVexNm0NjsbfNPLrUgmnUcU7DO32Dt3udOMDKc7kGJsAboc0OG7p8U2qBbtqSdWYm7N5k7+A2GwtXPC8P2uKFxdYgXboWdWRE8dC7HplTrTMkjSOIYRmc66+qoOmd+i6Gw3axtztp+FcPWGMICSblmc+s7Hdj+QtsAABoBW5sLAVK1X83VmBcE5udxvMgceMZwVBiKgYz2YzPkFPpnE4dZEKOoZW0KkXBp6iu0WcsRxBVwzkJPG4H+E0iCdR07x+MHnZtN2JpqLGQYlMutjY2IeNwRqCAwDKR10IrtsN+yt2TiyXIjk+SwJ0BPKXWxv61iRzAmrIDzrzzaxZTxBaKPszfJ1jwIEfAx3ytalJYCTvD1b/aqMTO2GsWlR1O2eRI5DbkL2SQ/cp/C8bic5e+CNPUcj2MBlb2E1IxeBzMJFbK4Fr2urLe+VxcXF9QQQQfAkFn9qnXR4C3jG6MP9RU+5TVIbm5LhJPMDxF57oNr83STr66qRj8TkhkkAuUR3A6kKSBXeEgEcaRjZFVB/KAP7VT8V4xHYQnMru8QCsjagyoDy2ter1TpUL2FjQTr6HzSpaSinIufX/d/ypjG77g3164c0EwuCKSnidKZp9an7MiDmkBlFFFFQpyKjcTwxkidAbMR3T81x3kb2MFPsqTXQp7DB3uCaRomcHiBJGkg2dVcDwcA/3pyofBhaBB0BA8lYgfkKmUtUAPLRkCQlbkim8Rh0cWdVYdHAI9oOhp2m5g1u6QD4qW/owprTGvruQkw8CoLIiqOiqB/So/EsUqWBuWPqoBd2PRR/U7DckDWlfBSutjiWTr2SIultu+HIBPMa1HkwZiUlZrG2rOA23zm0e1r/ACtLVdZhmbm+XSc4v8Y7ra25pA4zYLlcZHhk+PdRI5LlFuzE2tlRR3nsoA0Gtr2F7U3FjpZ9oZo4+pRFkPksrDJy1Ib7POpfBgpjziNULE3yCwazEB9rkMAGF777nen8TilQEswAHMmw6b01lUMqXYHGf3SRP/EEdIJI5IAc4WP18fnmncNxWPCob4cqnrO6uJG21eS9mawHLMbCwB2rWVj8Dwp8Qc0qlIeasCHlHzSp1SPqD3jqLAanYV3+zn4p9LexIAOgAiBzue4aDPgM2sKYdDDPHryRRRRWgoU3LGGBVgCDoQRcEdCOdVL+jmH+ShToI5JEQeSKco91XVFNexrxuvAI4ESPApQ4tuCsHxPBDt+zSWVUitnOYXZmUNk9XRQrKbjUlhqLHNLlS8bKj5SVIVtypIsG13sdauOJ8FWV+0VzHJYAmwZGttnU8xfcEHa5IAFQP/52f6RF59g/9O1rk9pbHxVXEF9Frd3QDdbGWYMTfW866K/SxFMMhxM+KzWKYRxLGcO0bGWAkhCy37eMlu0UEG9jq1ieYvV9h20t0pOJ+j8ogkJmDFFLqqRZbshzqDmdtyoGlvZTEb7Ef7BrH2hgK2GDfax2pyM/xzPfxKs0ntqghukaRxU2ikRwRpXVZSWEE0lFFEzcohFFFLSIS1yTzNFQOLyXTslOsxEem4D+uR4hA7fy08Dehunq6ROcGB/Z4r7mNCfMqCfzJqZUEcWhEnZM4jk5I/xZYD5l9HGo1Umpjg20IB6kXHuuKV870u1SCITc7OB3FVj9Zyn9EaoE2Jxg9XDQt1tiDf2AxC/vFcYnH4mMnNDGU5SLJKfvIIyyezMOpFOxyYhwCFgysAQyyuwIOxFohmHtqRrN2HEAjmfo4eFiix19eCjwYuV2Cu/Yk3snZ3Y8zlcOUJsL2sTYE2pqeWNG70WJncagtDIy3GxAyiIN4ixqyw+CytnkfO4uBplRb75VudT1JJ3tYEipD4gAX6ewe+nPqgGG5crD4T43SgE5KuhxhkI7Rxh1POSOUnxDHKsaeZdh4VqeH8CiiIexkcbSSEMw5d0ABU0+aBes9CZMTpAuYH/FIPYgHnf/ABPsrfXQlb3rX4DDCKJIgSRGioCdyFUC58dK7PYdECmXmgGcDeSDn70kDLIwZtkqOJcZA3p4jTyzUmkIpaK31URRRRQhFFFFCEUUUUIRWChi7PND/ksY/YtintMZQ+2t7WZ9J8LlYYgerYJJ4ans38gWIPgwJ0WsjbeEdiMN2B2mmRz4jwvzIAVrCVQypfI2VcrW2p9J+tMUGvP4BErYc0HNTAwOxpag0tJuSozS5qdTbSgc6iGik3U72QTrzE7af1qujxB7ct2bOkYKArlNpDq5yk3NhlUFbm5kFSirOyxR27R725hQLZpCPmrceZKjS9W8nowiqP2dzEQNjd0Y82dbg5ybkspBJJJzVtYHZNbEUXVGQNBNp4wfKcpJ4KtWrMYQz1yVJjcdhZEyzMgB+TKDG1+oz2ZT4ioXDYIsjNmKorWWVHaONhYG5VSIzYkrmAsbdb1dSieHSWFrfPS8if6RmXxLKB400vEI3U5WVhsbMrL7bGqVajXwvZqMc0TqbdxiDOufPIJWQ+7SCmxgAd55iOl4l/NUDD2GpIwihMi3UDYjcX1Ju17m5Jub3Jpn0Z4HDJC+TNGqyMsTRNZSmVWNlN42AdnW+XTJblVm3o9KPUxAt9eIs3tKOo/KtP8AQcU5gfScCCAb9k94uLdeii/MUw6DNu/zWfTAyxG8ksmJjvqLwxSgeBVAsnvTzNaXhXC8I6LLHH2gOqmUvIykEgi0pJRgQQRpYi1Nr6Ns376dmHSNTESOhYszDzUqfGr3DwLGgRFCqosFAsABXQ7JwdbDt/rBk6FrQHd5AHzOclVK9RrvdJPU27gnqKKK2FXRRRRQhIBS0UUIRRRRQhITQDQRQBQhLVB6T8T7JBGoUvLmADAFQgAzsVPrAZlFurjler+sV6fo6ZcQBdFR1c8kOjKx6KbEEnay9arYx9RlFzqXvRb692fdkpsO1j6rWvy9fHJUHDeJ5LpISY1OVJmty0Kv4A6B9AbWOoBa8rNO4XBkobBYe6elk0Ps3qQkRgCCFsoLRIsZGaMBnRLhbgrYG9lIGhrgKlEPO8LXMzl169BB0hb72Fgn13eu9X+1ITVemNl7N5WiVkQuLo/ebsiVJCuABqpsMxrmTibB2TsJcy2vdorai41Eh5HpUBY51hkOY81ExwcbZqxrguSwjRS8jeqg6c2Y/IQc2PkLkgGmOOmlzqCsOU5SV+MkuVVgVLAKNGGhVqf9E5zHNHIPWlYRTm5Jc3ZASSbnLJtfZWYDereCwjH12sqmxIFs75X5m1r9M0VfaCmXNGQJvyW44LwoQqSxzSPbO9rbXsq9EFzYeJO5NWd66pLV6ExjWNDWiALALAJJMlAqPNg4nN3jRiObKpP5ipNFPBIySLkC2grqiikQiubUb11QhFFFFCEUUUUIRRRRQhFFFFCEUUUUIRWTx2L/AGl9D8Qh7o5SOp/eHqgPq8iRm17hqx9JMQQixKSDKSCQbERqLyEcxfRLjUGQHlVY5CroLcgBsK5n8Q7RdSaMNTsXCXHllA63nl1VvDUd47xWb4rwVR8XE7DtDkWOyFVzAk2uNEChmI6CwtoKfl4WMOvaCRpWQERK+X12GVcxA7zG+UbetsTY1P4YmeR5jsLxp5A/GN7XXL5Rg86XHd6aKPcZs7DwiGYH8Tsq5j275DCbDP56TlA8c5WiXuykxln61SYyAR4TswbhVWO53OoW58TUPimHkWdnSNnWQL6trh1uLG5FgVy67aG5Gl7Djh+Jb2H3EGpxqFtUsaHZyXf/AD87pGEtMhY3Bs4ZkMbmZnzGNVJbXurbkVsoGf1dCbjlqfRf0VljKS4lkzISyxxksod8xLMxAzWzGy2sDrc6Wk4F8mLi6SI8durWEik+Qjf71aquz2LhqNWiMSR2ie5pBOXjN501uquLxdQ/0xYRpr65IoooroFnIooooQiiiihCKKKKEIooooQiiiihCKKKKEIooooQiiiuQb0IWf8ASaBs0U6gkRiRGABJCyFDnsNSAYwDbk19gaosdjrwmRCpuO4QQVLNomvO7ECt/We9JeFxmFpVhTtFaKQuI17QiKVJGsQLk5VOlYe0tjNxL/bNMOAyid6MhmIOmo5cbVDE+zG6R9pULCwCNFjXZFCi+9gLXPU1Aw3exTHmkQ/60hv/APCKnLOpFwdx/u1Q+HH/AMRKOeSI28Ly/wDY1wjLgnX43H1WiWkDwS+kAP7LLbfI9vPszarAG+o2NcYmPu6i499ReCt8QgJuUHZt4mI5Cfblv5EUFpDLjL5/6+CQ3ATmLfK8Lj5MsXsDSKjH7rNWzrFcQPqjmXRR5tIij8zW1rtPwyT+VcP7z/6tVDGDtN6fMooopCa6NVEtFciuqEIooooQiiikvQhLRRRQhFFFFCFWfD+E+lQfjR/qo+H8L9Kg/Fj/AFV4jhuFO8RlFsoJGptcquY+WnvqSfRycNlIA72S+bS9rj37edaJwdIWLllDH1SJFPz+y9m+H8L9Kg/Fj/VR8P4X6VB+LH+qvG8HwJs15fVUgMqnv6s6qRpYLnQi5I08xTWJ4FKgZrAhejAtqQAthu2o20o/KUpjeS/nq0T7Pz+y9o+H8J9Kg/Fj/VR8P4T6VB+NH+qvHT6L4gXvlGU2JLG3Lw66ezoQTUTxFHZG3Vip81Nj+YpW4Kk7JyR+0KrPepx3/Ze8/D+F+lQfix/qo+H8L9Kg/Fj/AFV4Hai1O/T2cSmfqjv4+f2Xsc0fDiSVxccdzchMRGFPWykkL/KBUfFSYSKz4eeDbLIvbIXfUEMWZruw1GpvZvAA+SUWqvU2Jh3tcD+7MgCT1OsaTKeNsVBHZy5n6L1F/SKFhlWRCxvYErGvTV2sqjbqdDYHalEcMQDQ4zDMzazK8yqrOfloRmK2HdykHRU1FiW8toqnT/C+DYxzHS6cyc+OkfXnFk87cqkg7oHQn5yvW+Gywdqsk+Mw3cN1jSZWGaxAZmOW9gdFy2B1uSBbRfD+F+lQfix/qrwKi1XcPsahh2ezpWCjftd7zLm+f2Xvnw/hfpUH4sf6qT4fwn0qD8WP9VeCWotU/wCns4lM/VHfx8/svfPh/C/SoPxY/wBVHw/hfpUH4sf6q8DtRaj9PZxKX9Ud/Hz+y98+H8L9Kg/Fj/VR8P4X6VB+LH+qvA7UUfp7OJR+qO/j5/Ze+fD+E+lQfix/qpBx/CfSoPxY/wBVeHwYRWiZzKqsDYIbXI013HXpy1sNRLbhEetsUnPewB9boT0Hv8rtODpjNx8E8Y+o7Jg/yC9m+H8L9Kg/Fj/VS/D+F+lQfix/qrxtuDRfSkOvQdQPn1AhwqEqGlC5gxJsCFI2B1G/X8qQYOkf3HwSnH1Bmwf5Be5fD+F+lQfix/qo+H8L9Kg/Fj/VXjDcGA9bERA2vbMdsoYeOt9NKhYzChGyh1cEXuDcbnQ9Dpe3jStwVN2Tj4JHbQqNElnmFHpTRRWlKx4SUoooolEBJnPX/ev/AGHuopaKEQiiiihCKKKKEIooooQiiiihCKKKKEIooooQiiiihCSloooQkpaKKEJKKWihC//Z"-->
                                                         alt="Profile Picture"
                                                         style="width: 120px; height: 100px; bottom: 0; ">
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <table>
                                            <thead>
                                                <tr>
                                                    <th>Bird Name</th>
                                                    <th>Score</th>
                                                    <th>Profile Picture</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${list}" var="tparticipation" begin="4" end="10">
                                                    <tr>
                                                        <td>${tparticipation.bird.name}</td>
                                                        <td>${tparticipation.score}</td>
                                                        <td>
                                                             <img src="data:image/png;base64,${Base64.getEncoder().encodeToString(tparticipation.bird.profilePic)}"
                                                            <img src="data:image/png;base64,${Base64.getEncoder().encodeToString(tparticipation.bird.profilePic)}"
                                                                 alt="Profile Picture"
                                                                 style="display: block; width: 100px; height: 100px;">
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </c:if>
                                    <c:if test="${not tournament.getStatus().contains('finished')}">
                                        <p>Coming Soon</p>
                                    </c:if>

                                </div>




                                <div class="is-layout-flow wp-block-column" style="flex-basis:50%">
                                    <div class="tribe-events-single-section tribe-events-event-meta primary tribe-clearfix">
                                        <div class="tribe-events-meta-group tribe-events-meta-group-details">
                                            <h3 class="tribe-events-single-section-title">Details</h3>
                                            <dl>
                                                <style>
                                                    .row {
                                                        display: grid;
                                                        grid-template-columns: 1fr 1fr;
                                                        grid-gap: 10px;
                                                        margin-bottom: 10px;
                                                    }

                                                    dt, dd {
                                                        padding: 5px;

                                                    }
                                                </style>
                                                <div class="row">
                                                    <dt> Leader </dt>
                                                    <dd><abbr  class="tribe-events-abbr tribe-events-start-date published dtstart" > ${tournament.getIncharge()}</abbr>
                                                </div>
                                                </dd>
                                                <div class="row">
                                                    <dt> Participant </dt>
                                                    <dd ><abbr class="tribe-events-abbr tribe-events-start-date published dtstart" > ${tournament.getNumberOfParticipant()}</abbr>
                                                    </dd>
                                                </div>
                                                <div class="row">
                                                    <dt> Start </dt>
                                                    <dd><abbr class="tribe-events-abbr tribe-events-start-date published dtstart" title="2023-05-27"> ${tournament.getStartDate()}</abbr>
                                                    </dd>
                                                </div>
                                                <div class="row">
                                                    <dt> End </dt>
                                                    <dd><div class="tribe-events-abbr tribe-events-start-time published dtstart" title="2023-05-27">
                                                            <div class="tribe-recurring-event-time">${tournament.getEndDate()}</div>
                                                    </dd>
                                                </div>
                                                <div class="row">
                                                    <dt > Registration Deadline </dt>
                                                    <dd><div class="tribe-events-abbr tribe-events-start-time published dtstart" title="2023-05-27">
                                                            <div class="tribe-recurring-event-time">${tournament.getRegistrationDeadline()}</div>
                                                    </dd>
                                                </div>
                                                <div class="row">
                                                    <dt>Prize</dt>
                                                    <dd>${tournament.getTotalPrize()}$</dd>
                                                </div>
                                                <div class="row">
                                                    <dt>Fee</dt>
                                                    <dd >${tournament.getFee()}$</dd>
                                                </div>
                                                <div class="row">
                                                    <dt>Contact</dt>
                                                    <dd>${tournament.getContact()}</dd>
                                                </div>
                                                <div class="row">
                                                    <dt>Organizer</dt>
                                                    <dd>${tournament.getHost()}</dd>
                                                </div>
                                                <!--AIzaSyB522yNJkfdTTRnsqsB0GXmfF2iRFfvdDw-->
                                                <div class="row">
                                                    <dt>Location</dt>
                                                    <dd>${location}</dd>
                                                    <div class="tribe-block tribe-block__venue tribe-block__venue--has-map">
                                                        <div class="tribe-block__venue__meta">
                                                            <div class="tribe-block__venue__name">
                                                                <dd><dd>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                                <style>
                                                    #map {

                                                        height: 300px;
                                                        width: 100%;
                                                    }
                                                </style>
                                                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB522yNJkfdTTRnsqsB0GXmfF2iRFfvdDw"></script>
                                                <script>
                                        function initMap() {
                                            var locations = [
                                                {
                                                    address: "07 Công Trường Lam Sơn, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 700000, Vietnam",
                                                    latitude: 10.77685102126475,
                                                    longitude: 106.70391609388912
                                                },
                                                {
                                                    address: "64A Trương Định, Võ Thị Sáu, Quận 3, Thành phố Hồ Chí Minh, Vietnam",
                                                    latitude: 10.777428062452405,
                                                    longitude: 106.69047902458195
                                                },
                                                {
                                                    address: "300A Nguyễn Tất Thành, Phường 13, Quận 4, Thành phố Hồ Chí Minh 70000, Vietnam",
                                                    latitude: 10.761222612270188,
                                                    longitude: 106.71054129574509
                                                },
                                                {
                                                    address: "11 Đ. Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh, Vietnam",
                                                    latitude: 10.772552112327606,
                                                    longitude: 106.67005087643817
                                                },
                                                {
                                                    address: "170 Lê Văn Khương, Thới An, Quận 12, Thành phố Hồ Chí Minh, Vietnam",
                                                    latitude: 10.868584871487691,
                                                    longitude: 106.65234149574671
                                                },
                                                {
                                                    address: "Lô E2a-7, Đường D1, Đ. D1, Long Thạnh Mỹ, Thành Phố Thủ Đức, Thành phố Hồ Chí Minh 700000, Vietnam",
                                                    latitude: 10.841317261603312,
                                                    longitude: 106.81002247062233
                                                },
                                                {
                                                    address: "125 Đồng Văn Cống, Phường Thạnh Mỹ Lợi, Quận 2, Thành phố Hồ Chí Minh 700000, Vietnam",
                                                    latitude: 10.77426740551232,
                                                    longitude: 106.76228689574539
                                                },
                                                {
                                                    address: "86 P. Nguyễn Văn Tuyết, Trung Liệt, Đống Đa, Hà Nội 700000, Vietnam",
                                                    latitude: 21.011384683002458,
                                                    longitude: 105.81883898061733
                                                },
                                                {
                                                    address: "Đ. Bưởi, Thủ Lệ, Ba Đình, Hà Nội 100000, Vietnam",
                                                    latitude: 21.030770449872584,
                                                    longitude: 105.80553378247417
                                                },
                                                {
                                                    address: "275 Đ. Âu Cơ, Quảng An, Tây Hồ, Hà Nội, Vietnam",
                                                    latitude: 21.071328475112576,
                                                    longitude: 105.82564411131197
                                                }


                                            ];

                                            // Retrieve the selected location based on the value of ${location}
                                            var selectedLocation = locations.find(function (loc) {
                                                return loc.address === "${location}";
                                            });

                                            if (selectedLocation) {
                                                // Create a map object and specify the DOM element for display
                                                var map = new google.maps.Map(document.getElementById('map'), {
                                                    zoom: 17,
                                                    center: {lat: selectedLocation.latitude, lng: selectedLocation.longitude}
                                                });

                                                // Create a marker and set its position
                                                var marker = new google.maps.Marker({
                                                    map: map,
                                                    position: {lat: selectedLocation.latitude, lng: selectedLocation.longitude},
                                                    title: selectedLocation.address
                                                });

                                                // Set the content for the info window
                                                var contentString = '<div id="info-window">' +
                                                        '<h3>' + selectedLocation.address + '</h3>' +
                                                        '</div>';

                                                // Create an info window and set the content
                                                var infoWindow = new google.maps.InfoWindow({
                                                    content: contentString
                                                });

                                                // Open the info window when the marker is clicked
                                                marker.addListener('click', function () {
                                                    infoWindow.open(map, marker);
                                                });
                                            }
                                        }
                                                </script>
                                                <div id="map"></div>

                                                <script>
                                                    // Initialize the map
                                                    initMap();
                                                </script>
                                        </div>




                                        <!--                                                 <a class="tribe-events-gmap" href="https://www.google.com/maps/place/FPT+University+HCMC/@15.874983,100.8691978,6z/data=!4m10!1m2!2m1!1sfpt+university+ho+chi+minh!3m6!1s0x31752731176b07b1:0xb752b24b379bae5e!8m2!3d10.8411276!4d106.809883!15sChpmcHQgdW5pdmVyc2l0eSBobyBjaGkgbWluaFocIhpmcHQgdW5pdmVyc2l0eSBobyBjaGkgbWluaJIBB2NvbGxlZ2WaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVTkNiSEY1Y2paUlJSQULgAQA!16s%2Fg%2F11j2zx_fz_?hl=en&entry=ttu" title="Click to view a Google Map" target="_blank" rel="noreferrer noopener">View Map</a></address>-->


                                        </dl>
                                        <div class="is-content-justification-center is-layout-flex wp-container-1 wp-block-buttons">
                                            <div class="wp-block-button">
                                                <c:choose>
                                                    <c:when test="${tournament.getStatus().trim() eq 'pending'}">
                                                        <form action="${pageContext.request.contextPath}/BirdController" method="POST">
                                                            <input type="hidden" name="action" value="view">
                                                            <input type="hidden" name="UID" value="${users.getUID()}">
                                                            <input type="hidden" name="TID" value="${tournament.getTID()}">
                                                            <c:set var="sessionTID" scope="session" value="${tournament.getTID()}"/>

                                                            <c:choose>
                                                                <c:when test="${join}">
                                                                    <input type="hidden" name="bird" value="${bird}">
                                                                    <button type="submit" class="wp-block-button__link has-green-background-color has-background" > register success</button>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <button type="submit" class="wp-block-button__link has-orange-background-color has-background">Join Tournament</button>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </form>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form action="${pageContext.request.contextPath}/StaffAccountController" method="GET">
                                                            <input type="hidden" name="action" value="viewlist">
                                                            <button type="submit" class="wp-block-button__link has-blue-background-color has-background">Return</button>
                                                        </form>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </div>
                                        <script>
                                            // Lấy tham số "registerSuccess" từ URL
                                            const urlParams = new URLSearchParams(window.location.search);
                                            const registerSuccess = urlParams.get('registerSuccess');

                                            // Kiểm tra nếu có tham số "registerSuccess" và giá trị là "true"
                                            if (registerSuccess === 'true') {
                                                // Thay thế nút "Join field trip" bằng dòng chữ "Register success"
                                                const joinFieldTripButton = document.querySelector('.wp-block-button__link');
                                                joinFieldTripButton.textContent = 'Register success';
                                                joinFieldTripButton.removeAttribute('href');
                                            }
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>

                </div>
                <!--                <div>
                <c:choose>
                    <c:when test="${tournament.getStatus().contains('ongoing') || tournament.getStatus().contains('finished')}">
                        <c:choose>
                            <c:when test="${not empty gallery}">
                                <c:forEach items="${gallery}" var="imageBytes">
                                    <img src="data:image/jpg;base64,${Base64.getEncoder().encodeToString(imageBytes)}" alt="Image">
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <p>No images available. Check back later for upcoming events.</p>
                            </c:otherwise>
                        </c:choose>
                    </c:when>
                    <c:when test="${tournament.getStatus().contains('pending') || tournament.getStatus().contains('formClosed')}">
                        <p>Upcoming event. Images will be available during the event.</p>
                    </c:when>
                </c:choose>
            </div>-->
                </section> 

                </div>

            </article>


        </main>            
        <!--Footer-->
        <%@ include file="member_footer.jsp" %>


        <!-- BEGIN Search modal -->
        <div class="reveal" id="search-modal" data-reveal role="dialog" data-animation-in="fade-in fast" aria-label="Search">
            <button class="close-button" data-close aria-label="Close" type="button"><span class="text">Cancel</span> <span class="symbol" aria-hidden="true">&times;</span></button>
            <div class="search-container">
                <div class="search-area row">
                    <form role="search" method="get" class="search-form" action="/home/search/">
                        <span class="fa fa-search" aria-hidden="true"></span>
                        <label for="modal-search" class="sr-only">Search this website</label>
                        <input id="modal-search" type="search" class="search-field" placeholder="Search: Enter Keywords" value="" name="q" title="Search for:" />
                        <input type="submit" class="search-submit button" value="Search" />
                    </form>
                </div><!-- .search-form -->
            </div><!-- .search-container -->
            <aside id="search-modal-content" class="search-links" aria-label="Explore these links">

                <div class="is-layout-flex wp-container-13 wp-block-columns">
                    <div class="is-layout-flow wp-block-column">
                        <p class="has-text-align-center">Bird ID help, Bird Guide</p>



                        <div class="is-layout-flex wp-block-buttons is-content-justification-center">
                            <div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://www.allaboutbirds.org/">All About Birds</a></div>
                        </div>
                    </div>



                    <div class="is-layout-flow wp-block-column">
                        <p class="has-text-align-center">Find birds near you</p>



                        <div class="is-layout-flex wp-block-buttons is-content-justification-center">
                            <div class="wp-block-button is-style-outline"><a class="wp-block-button__link" href="https://ebird.org/">eBird</a></div>
                        </div>
                    </div>



                    <div class="is-layout-flow wp-block-column quick-links">
                        <p class="has-text-align-center">Quick Links</p>



                        <div class="is-layout-flex wp-container-11 wp-block-columns">
                            <div class="is-layout-flow wp-block-column">
                                <p class="has-text-align-center"><a href="https://www.birds.cornell.edu/home/visit/" data-type="page" data-id="1229">Visit Us</a><br><a href="https://www.birds.cornell.edu/home/staff-directory/" data-type="page" data-id="1414">Staff Directory</a></p>
                            </div>



                            <div class="is-layout-flow wp-block-column">
                                <p class="has-text-align-center"><a href="https://www.birds.cornell.edu/home/members/" data-type="page" data-id="1321">Members</a><br><a href="https://www.birds.cornell.edu/students/">Students</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>

        </div><!-- .reveal -->
        <!-- //END Search modal -->

        <div
            class="hustle-ui hustle-slidein hustle-palette--gray_slate hustle_module_id_13 module_id_13  "

            data-id="13"
            data-render-id="0"
            data-tracking="disabled"

            data-position="se"
            data-close-delay="false"

            style="opacity: 0;"
            ><div class="hustle-slidein-content"><div class="hustle-info hustle-info--compact"><div class="hustle-main-wrapper"><div class="hustle-layout"><button class="hustle-button-icon hustle-button-close has-background">
                                <span class="hustle-icon-close" aria-hidden="true"></span>
                                <span class="hustle-screen-reader">Close this module</span>
                            </button><div class="hustle-image hustle-image-fit--cover" aria-hidden="true"><img  alt="Evening Grosbeak perched on a snag"  data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2020/10/EveningGrosbeak_BellemareCeline-smaller.jpg" class="hustle-image-position--centercenter lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src="https://www.birds.cornell.edu/home/wp-content/uploads/2020/10/EveningGrosbeak_BellemareCeline-smaller.jpg" alt="Evening Grosbeak perched on a snag" class="hustle-image-position--centercenter" /></noscript></div><div class="hustle-content"><div class="hustle-content-wrap"><div class="hustle-group-title"><span class="hustle-title">Sign Up for eNews</span></div><div class="hustle-group-content"><p><script>(function () {
                                    window.mc4wp = window.mc4wp || {
                                        listeners: [],
                                        forms: {
                                            on: function (evt, cb) {
                                                window.mc4wp.listeners.push(
                                                        {
                                                            event: evt,
                                                            callback: cb
                                                        }
                                                );
                                            }
                                        }
                                    }
                                })();
                                            </script><!-- Mailchimp for WordPress v4.8.12 - https://wordpress.org/plugins/mailchimp-for-wp/ --><form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-9819 mc4wp-ajax" method="post" data-id="9819" data-name="Sapsucker Woods eNewsletter" ><div class="mc4wp-form-fields"><fieldset>
                                                    <label>
                                                        <input name="INTERESTS[e49185fbaf][]" type="checkbox" value="5f780d73e0"
                                                               checked="true"> <span>Cornell Lab eNews (general birding tips and news)</span>
                                                    </label>
                                                    <label>
                                                        <input name="INTERESTS[e49185fbaf][]" type="checkbox" value="6e74794903"
                                                               checked="true"> <span>Sapsucker Woods eNews (Ithaca local events, etc)</span>
                                                    </label>
                                                </fieldset>

                                                <label>Email address: </label>
                                                <input type="email" name="EMAIL" placeholder="Your email address" required />
                                                <input type="submit" value="Sign up" class="button-left" />


                                            </div><label style="display: none !important;">Leave this field empty if you're human: <input type="text" name="_mc4wp_honeypot" value="" tabindex="-1" autocomplete="off" /></label><input type="hidden" name="_mc4wp_timestamp" value="1685177575" /><input type="hidden" name="_mc4wp_form_id" value="9819" /><input type="hidden" name="_mc4wp_form_element_id" value="mc4wp-form-1" /><div class="mc4wp-response"></div></form><!-- / Mailchimp for WordPress Plugin --></p>
                                    </div></div></div></div></div></div></div></div><noscript><iframe 
            height="0" width="0" style="display:none;visibility:hidden" data-src="//www.googletagmanager.com/ns.html?id=GTM-P7854M" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="></iframe></noscript>

        <link rel="stylesheet" href=https://lightbox.allaboutbirds.org/wp-content/plugins/clo-lightbox/clo-lightbox.min.css>
        <script type="text/javascript" src="https://lightbox.allaboutbirds.org/wp-content/plugins/clo-lightbox/clo-lightbox.js"></script>
        <script type="text/javascript">
                                if (!window.location.pathname.toLowerCase().includes('terms-of-use') && !window.location.pathname.toLowerCase().includes('our-commitment-to-diversity-equity-inclusion-and-justice') && !window.location.pathname.toLowerCase().includes('web-accessibility-assistance')) {
                                    var clo_lightbox = new CLO_Lightbox();
                                    clo_lightbox.create('bce', 'bcehome', window.location.pathname, 'live');
                                }
        </script>		<script>
            (function (body) {
                'use strict';
                body.className = body.className.replace(/\btribe-no-js\b/, 'tribe-js');
            })(document.body);
        </script>
        <script>(function () {
                function maybePrefixUrlField() {
                    if (this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
                        this.value = "http://" + this.value;
                    }
                }

                var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
                if (urlFields) {
                    for (var j = 0; j < urlFields.length; j++) {
                        urlFields[j].addEventListener('blur', maybePrefixUrlField);
                    }
                }
            })();</script><script> /* <![CDATA[ */var tribe_l10n_datatables = {"aria": {"sort_ascending": ": activate to sort column ascending", "sort_descending": ": activate to sort column descending"}, "length_menu": "Show _MENU_ entries", "empty_table": "No data available in table", "info": "Showing _START_ to _END_ of _TOTAL_ entries", "info_empty": "Showing 0 to 0 of 0 entries", "info_filtered": "(filtered from _MAX_ total entries)", "zero_records": "No matching records found", "search": "Search:", "all_selected_text": "All items on this page were selected. ", "select_all_link": "Select all pages", "clear_selection": "Clear Selection.", "pagination": {"all": "All", "next": "Next", "previous": "Previous"}, "select": {"rows": {"0": "", "_": ": Selected %d rows", "1": ": Selected 1 row"}}, "datepicker": {"dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"], "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesShort": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesMin": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], "nextText": "Next", "prevText": "Prev", "currentText": "Today", "closeText": "Done", "today": "Today", "clear": "Clear"}};/* ]]> */</script><style id='core-block-supports-inline-css' type='text/css'>
            .wp-block-columns.wp-container-4,.wp-block-columns.wp-container-11,.wp-block-columns.wp-container-13{flex-wrap:nowrap;}
        </style>
        <link rel='stylesheet' id='hustle_icons-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/hustle-ui/css/hustle-icons.min.css?ver=4.6.3' type='text/css' media='all' />
        <link rel='stylesheet' id='hustle_global-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/hustle-ui/css/hustle-global.min.css?ver=4.6.3' type='text/css' media='all' />
        <link rel='stylesheet' id='hustle_info-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/hustle-ui/css/hustle-info.min.css?ver=4.6.3' type='text/css' media='all' />
        <link rel='stylesheet' id='hustle_slidein-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/hustle-ui/css/hustle-slidein.min.css?ver=4.6.3' type='text/css' media='all' />
        <link rel='stylesheet' id='hustle-fonts-css' href='https://fonts.bunny.net/css?family=Open+Sans%3Aregular%2C700&#038;display=swap&#038;ver=1.0' type='text/css' media='all' />
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/vendor/momentjs/moment.min.js?ver=5.0.6' id='tribe-moment-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/vendor/momentjs/locale.min.js?ver=5.0.6' id='tribe-moment-locales-js'></script>
        <script type='text/javascript' id='tribe-events-dynamic-js-extra'>
                /* <![CDATA[ */
                var tribe_dynamic_help_text = {"date_with_year": "F j, Y", "date_no_year": "F j", "datepicker_format": "m\/d\/Y", "datepicker_format_index": "2", "days": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], "daysShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], "months": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthsShort": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], "msgs": "[\"This event is from %%starttime%% to %%endtime%% on %%startdatewithyear%%.\",\"This event is at %%starttime%% on %%startdatewithyear%%.\",\"This event is all day on %%startdatewithyear%%.\",\"This event starts at %%starttime%% on %%startdatenoyear%% and ends at %%endtime%% on %%enddatewithyear%%\",\"This event starts at %%starttime%% on %%startdatenoyear%% and ends on %%enddatewithyear%%\",\"This event is all day starting on %%startdatenoyear%% and ending on %%enddatewithyear%%.\"]"};
                /* ]]> */
        </script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/events-dynamic.min.js?ver=6.0.6.2' id='tribe-events-dynamic-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/swv/js/index.js?ver=5.7.2' id='swv-js'></script>
        <script type='text/javascript' id='contact-form-7-js-extra'>
                /* <![CDATA[ */
                var wpcf7 = {"api": {"root": "https:\/\/www.birds.cornell.edu\/home\/wp-json\/", "namespace": "contact-form-7\/v1"}, "cached": "1"};
                /* ]]> */
        </script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.7.2' id='contact-form-7-js'></script>
        <script type='text/javascript' id='hui_scripts-js-extra'>
                /* <![CDATA[ */
                var hustleSettings = {"mobile_breakpoint": "782"};
                /* ]]> */
        </script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/hustle-ui/js/hustle-ui.min.js?ver=4.6.3' id='hui_scripts-js'></script>
        <script src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/js/underscore-before.js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/underscore.min.js?ver=1.13.4' id='underscore-js'></script>
        <script src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/js/underscore-after.js'></script>
        <script type='text/javascript' id='hustle_front-js-extra'>
                /* <![CDATA[ */
                var Modules = [{"settings": {"auto_close_success_message": "0", "triggers": {"on_time_delay": "0", "on_time_unit": "seconds", "on_scroll": "scrolled", "on_scroll_page_percent": "2", "on_scroll_css_selector": "", "enable_on_click_element": "1", "on_click_element": "", "enable_on_click_shortcode": "1", "on_exit_intent_per_session": "1", "on_exit_intent_delayed_time": "0", "on_exit_intent_delayed_unit": "seconds", "on_adblock_delay": "0", "on_adblock_delay_unit": "seconds", "trigger": ["scroll"], "on_exit_intent": "true", "on_exit_intent_delayed": "0", "on_adblock": "false", "enable_on_adblock_delay": "0", "on_time": "false", "on_adblock_delayed": "false", "on_adblock_delayed_time": "5", "on_adblock_delayed_unit": "seconds"}, "animation_in": "slideInUp", "animation_out": "slideOutUp", "after_close": "no_show_all", "expiration": "1", "expiration_unit": "days", "after_optin_expiration": 365, "after_optin_expiration_unit": "days", "after_cta_expiration": 365, "after_cta_expiration_unit": "days", "on_submit": "default", "on_submit_delay": "5", "on_submit_delay_unit": "seconds", "close_cta": "0", "close_cta_time": "0", "close_cta_unit": "seconds", "hide_after_cta": "keep_show", "hide_after_subscription": "keep_show", "is_schedule": "0", "schedule": {"not_schedule_start": "1", "start_date": "10\/21\/2020", "start_hour": "12", "start_minute": "00", "start_meridiem_offset": "am", "not_schedule_end": "1", "end_date": "10\/27\/2020", "end_hour": "11", "end_minute": "59", "end_meridiem_offset": "pm", "active_days": "all", "week_days": [], "is_active_all_day": "1", "day_start_hour": "00", "day_start_minute": "00", "day_start_meridiem_offset": "am", "day_end_hour": "11", "day_end_minute": "59", "day_end_meridiem_offset": "pm", "time_to_use": "server", "custom_timezone": "UTC"}, "display_position": "se", "auto_hide": "0", "auto_hide_unit": "hours", "auto_hide_time": "5", "after_close_trigger": ["click_close_icon"], "conditions": {"pages": {"filter_type": "except", "pages": ["7606"]}}, "allow_scroll_page": "0", "not_close_on_background_click": "false", "pages": ["7606"], "filter_type": "except", "close_on_background_click": "1"}, "module_id": "13", "blog_id": "0", "module_name": "Sapsucker Woods eNews", "module_type": "slidein", "active": "1", "test_mode": "0", "module_mode": "informational"}];
                var incOpt = {"conditional_tags": {"is_single": false, "is_singular": true, "is_tag": false, "is_category": false, "is_author": false, "is_date": false, "is_post_type_archive": false, "is_404": false, "is_front_page": false, "is_search": false}, "is_admin": "", "real_page_id": "1248", "thereferrer": "https:\/\/www.birds.cornell.edu\/home\/visit\/", "actual_url": "www.birds.cornell.edu\/home\/visit\/events\/", "full_actual_url": "https:\/\/www.birds.cornell.edu\/home\/visit\/events\/", "native_share_enpoints": {"facebook": "https:\/\/www.facebook.com\/sharer\/sharer.php?u=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents", "twitter": "https:\/\/twitter.com\/intent\/tweet?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents&text=Events", "pinterest": "https:\/\/www.pinterest.com\/pin\/create\/button\/?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents", "reddit": "https:\/\/www.reddit.com\/submit?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents", "linkedin": "https:\/\/www.linkedin.com\/shareArticle?mini=true&url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents", "vkontakte": "https:\/\/vk.com\/share.php?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents", "whatsapp": "https:\/\/api.whatsapp.com\/send?text=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents", "email": "mailto:?subject=Events&body=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents"}, "ajaxurl": "https:\/\/www.birds.cornell.edu\/home\/wp-admin\/admin-ajax.php", "page_id": "1248", "page_slug": "visit-events", "is_upfront": "", "script_delay": "3000"};
                /* ]]> */
        </script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/js/front.min.js?ver=4.6.3' id='hustle_front-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/wp-smush-pro/app/assets/js/smush-lazy-load.min.js?ver=3.12.3' id='smush-lazy-load-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/foundation.min.js?ver=6.1.1' id='foundation-js-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/slick.min.js?ver=6.1.1' id='slick-js-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/scripts.js?ver=1684241978' id='bp-site-js-js'></script>
        <script type='text/javascript' src='https://code.jquery.com/ui/1.12.1/jquery-ui.min.js' id='jquery-ui-js'></script>
        <script type='text/javascript' id='bp-bce-site-js-js-extra'>
                /* <![CDATA[ */
                var wp_post_vars = {"postSlug": "events"};
                /* ]]> */
        </script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/scripts/scripts.js?ver=1684846858' id='bp-bce-site-js-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/js/tribe-common.min.js?ver=5.0.6' id='tribe-common-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/ui/core.min.js?ver=1.13.2' id='jquery-ui-core-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/ui/mouse.min.js?ver=1.13.2' id='jquery-ui-mouse-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/ui/draggable.min.js?ver=1.13.2' id='jquery-ui-draggable-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/vendor/nanoscroller/jquery.nanoscroller.min.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-nanoscroller-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/week-grid-scroller.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-week-grid-scroller-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/accordion.js?ver=6.0.6.2' id='tribe-events-views-v2-accordion-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/week-day-selector.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-week-day-selector-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/week-multiday-toggle.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-week-multiday-toggle-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/week-event-link.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-week-event-link-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/map-events-scroller.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-map-events-scroller-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/vendor/swiper/dist/js/swiper.min.js?ver=6.0.5.1' id='tribe-swiper-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/map-no-venue-modal.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-map-no-venue-modal-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/map-provider-google-maps.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-map-provider-google-maps-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/map-events.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-map-events-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/vendor/tooltipster/tooltipster.bundle.min.js?ver=5.0.6' id='tribe-tooltipster-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/tooltip.js?ver=6.0.6.2' id='tribe-events-views-v2-tooltip-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/tooltip-pro.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-tooltip-pro-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/multiday-events.js?ver=6.0.6.2' id='tribe-events-views-v2-multiday-events-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/multiday-events-pro.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-multiday-events-pro-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/toggle-recurrence.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-toggle-recurrence-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js?ver=6.0.6.2' id='tribe-events-views-v2-bootstrap-datepicker-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/datepicker.js?ver=6.0.6.2' id='tribe-events-views-v2-datepicker-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/js/views/datepicker-pro.js?ver=6.0.5.1' id='tribe-events-pro-views-v2-datepicker-pro-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/js/utils/query-string.js?ver=5.0.6' id='tribe-query-string-js'></script>
        <script defer type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/manager.js?ver=6.0.6.2' id='tribe-events-views-v2-manager-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/breakpoints.js?ver=6.0.6.2' id='tribe-events-views-v2-breakpoints-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/viewport.js?ver=6.0.6.2' id='tribe-events-views-v2-viewport-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/view-selector.js?ver=6.0.6.2' id='tribe-events-views-v2-view-selector-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/ical-links.js?ver=6.0.6.2' id='tribe-events-views-v2-ical-links-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/navigation-scroll.js?ver=6.0.6.2' id='tribe-events-views-v2-navigation-scroll-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/month-mobile-events.js?ver=6.0.6.2' id='tribe-events-views-v2-month-mobile-events-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/month-grid.js?ver=6.0.6.2' id='tribe-events-views-v2-month-grid-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/events-bar.js?ver=6.0.6.2' id='tribe-events-views-v2-events-bar-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/views/events-bar-inputs.js?ver=6.0.6.2' id='tribe-events-views-v2-events-bar-inputs-js'></script>
        <script type='text/javascript' defer src='https://www.birds.cornell.edu/home/wp-content/plugins/mailchimp-for-wp/assets/js/forms.js?ver=4.8.12' id='mc4wp-forms-api-js'></script>
        <script type='text/javascript' id='mc4wp-ajax-forms-js-extra'>
                /* <![CDATA[ */
                var mc4wp_ajax_vars = {"loading_character": "\u2022", "ajax_url": "https:\/\/www.birds.cornell.edu\/home\/wp-admin\/admin-ajax.php?action=mc4wp-form", "error_text": "Oops. Something went wrong. Please try again later."};
                /* ]]> */
        </script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/mc4wp-premium/ajax-forms/assets/js/ajax-forms.js?ver=4.9' id='mc4wp-ajax-forms-js'></script>
        <style type="text/css" id="hustle-module-13-0-styles" class="hustle-module-styles hustle-module-styles-13">@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-slidein-content .hustle-info {max-width: 800px;}}.hustle-ui.module_id_13  .hustle-slidein-content {-moz-box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);-webkit-box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13  .hustle-slidein-content {-moz-box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);-webkit-box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);}} .hustle-ui.module_id_13 .hustle-layout {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-color: #dadada;border-radius: 0px 0px 0px 0px;overflow: hidden;background-color: #38454e;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;}} .hustle-ui.module_id_13 .hustle-layout .hustle-layout-content {padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;border-color: rgba(0,0,0,0);background-color: rgba(0,0,0,0);-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);}.hustle-ui.module_id_13 .hustle-main-wrapper {position: relative;padding: 30px 0 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-layout-content {padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);}}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-main-wrapper {padding: 30px 0 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-image {background-color: #35414a;}.hustle-ui.module_id_13 .hustle-layout .hustle-image {height: 150px;overflow: hidden;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image {max-width: 320px;height: auto;min-height: 0;-webkit-box-flex: 0;-ms-flex: 0 0 320px;flex: 0 0 320px;}}.hustle-ui.module_id_13 .hustle-layout .hustle-image img {width: 100%;max-width: unset;height: 100%;display: block;position: absolute;object-fit: cover;-ms-interpolation-mode: bicubic;}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {width: auto;max-width: unset;height: auto;max-height: unset;}}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {width: 100%;max-width: unset;height: 100%;display: block;position: absolute;object-fit: cover;-ms-interpolation-mode: bicubic;}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {width: auto;max-width: unset;height: auto;max-height: unset;}}.hustle-ui.module_id_13 .hustle-layout .hustle-image img {object-position: center center;-o-object-position: center center;}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {left: 50%;}}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);}}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {top: 50%;}}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);}}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {object-position: center center;-o-object-position: center center;}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {left: 50%;right: auto;}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {top: 50%;bottom: auto;}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);}}  .hustle-ui.module_id_13 .hustle-layout .hustle-content {margin: 0px 0px 0px 0px;padding: 0 10px 0 10px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;border-color: rgba(0,0,0,0);background-color: rgba(0,0,0,0);-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);}.hustle-ui.module_id_13 .hustle-layout .hustle-content .hustle-content-wrap {padding: 10px 0 10px 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-content {margin: 0px 0px 0px 0px;padding: 0 20 0 20;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-content .hustle-content-wrap {padding: 20px 0 20px 0;}} .hustle-ui.module_id_13 .hustle-layout .hustle-title {display: block;margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-color: rgba(0,0,0,0);border-radius: 0px 0px 0px 0px;background-color: rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);color: #fdfdfd;font: 400 33px/38px Georgia,Times,serif;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;text-align: left;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-title {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);font: 400 33px/38px Georgia,Times,serif;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;text-align: left;}} .hustle-ui.module_id_13 .hustle-layout .hustle-group-content {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-color: rgba(0,0,0,0);border-width: 0px 0px 0px 0px;border-style: solid;color: #adb5b7;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content b,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content strong {font-weight: bold;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a:visited {color: #ffffff;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a:hover {color: #ffffff;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a:focus,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a:active {color: #ffffff;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content {color: #adb5b7;font-size: 14px;line-height: 1.45em;font-family: Open Sans;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content {font-size: 14px;line-height: 1.45em;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content p:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: normal 14px/1.45em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content p:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content p:not([class*="forminator-"]) {margin: 0 0 10px;font: normal 14px/1.45em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content p:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h1:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 28px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h1:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h1:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 28px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h1:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h2:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font-size: 22px;line-height: 1.4em;font-weight: 700;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h2:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h2:not([class*="forminator-"]) {margin: 0 0 10px;font-size: 22px;line-height: 1.4em;font-weight: 700;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h2:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h3:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 18px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h3:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h3:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 18px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h3:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h4:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 16px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h4:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h4:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 16px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h4:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h5:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 14px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h5:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h5:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 14px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h5:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h6:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 12px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: uppercase;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h6:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h6:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 12px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: uppercase;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h6:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]),.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]) {margin: 0 0 10px;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]):last-child,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]):last-child {margin-bottom: 0;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content li:not([class*="forminator-"]) {margin: 0 0 5px;color: #adb5b7;font: normal 14px/1.45em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content li:not([class*="forminator-"]):last-child {margin-bottom: 0;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]) li:before {color: #ADB5B7}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]) li:before {background-color: #ADB5B7}@media screen and (min-width: 783px) {.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]),.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]) {margin: 0 0 20px;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]):last-child,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]):last-child {margin: 0;}}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content li:not([class*="forminator-"]) {margin: 0 0 5px;font: normal 14px/1.45em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content li:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content blockquote {margin-right: 0;margin-left: 0;}.hustle-ui.module_id_13 button.hustle-button-close {color: #ffffff;background: transparent;border-radius: 0;position: absolute;z-index: 1;display: block;right: 0;left: auto;top: 0;bottom: auto;transform: unset;}.hustle-ui.module_id_13 button.hustle-button-close:hover {color: #ffffff;}.hustle-ui.module_id_13 button.hustle-button-close:focus {color: #ffffff;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 button.hustle-button-close {background: transparent;border-radius: 0;display: block;right: 0;left: auto;top: 0;bottom: auto;transform: unset;}} .hustle-ui.module_id_13 .hustle-layout .hustle-group-content blockquote {border-left-color: #38C5B5;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] h2 span{display:  inline-block !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] h2 span{display:  inline-block !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form input{display:  inline-block; padding:  .3rem .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] h2 span{display:  inline-block !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form input{display:  inline-block; padding:  .3rem .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form [type=submit]{font-size: 18px; border-radius:  0px 4px 4px 0px; padding:  10px 0;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] h2 span{display:  inline-block !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form input{display:  inline-block; padding:  .3rem .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form [type=submit]{font-size: 18px; border-radius:  0px 4px 4px 0px; padding:  10px 0;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-modal-message+.hustle-layout-footer{padding-top: 0;}

            @media only screen and (max-width: 900px) { .hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-image.hustle-image-fit--cover{display: none;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{padding:  15px;} } 

            @media only screen and (max-width: 400px){ .hustle-ui.hustle_module_id_13[data-id="13"] h2 span{font-size: 12px;} }</style>		
    </body><!-- end body from header.php -->

</html>
