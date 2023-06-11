<%-- 
    Document   : member_meeting_details
    Created on : Jun 4, 2023, 2:48:46 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js"  lang="en-US" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#">

    <head>

        <meta charset="utf-8">

        <!-- Force IE to use the latest rendering engine available -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta class="foundation-mq">

        <!-- If Site Icon isn't set in customizer -->
        <!-- Icons & Favicons -->
        <link rel="icon" href="https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/favicon.png">
        <link href="https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/images/apple-icon-touch.png" rel="apple-touch-icon" />	

        <title>Events - Meeting</title>
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

        <!-- Google Tag Manager -->
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

        <!-- START - Open Graph and Twitter Card Tags 3.2.0 -->
        <!-- Facebook Open Graph -->
        <meta property="og:locale" content="en_US"/>
        <meta property="og:site_name" content="Birds, Cornell Lab of Ornithology"/>
        <meta property="og:title" content="Events"/>
        <meta property="og:url" content="https://www.birds.cornell.edu/home/visit/events/"/>
        <meta property="og:type" content="article"/>
        <meta property="og:description" content="The Cornell Lab of Ornithology offers a variety of programs and events for visitors of all ages. Please see our events calendar (below) or call 1-800-843-BIRD for more information.



              Virtual Programs
              Virtual programs include free webinars and family programs and expert-led paid workshops. Check the"/>
        <meta property="og:image" content="https://www.birds.cornell.edu/home/wp-content/uploads/2018/11/observatory.jpg"/>
        <meta property="og:image:url" content="https://www.birds.cornell.edu/home/wp-content/uploads/2018/11/observatory.jpg"/>
        <meta property="og:image:secure_url" content="https://www.birds.cornell.edu/home/wp-content/uploads/2018/11/observatory.jpg"/>
        <meta property="article:publisher" content="https://www.facebook.com/cornellbirds"/>
        <!-- Google+ / Schema.org -->
        <meta itemprop="name" content="Events"/>
        <meta itemprop="headline" content="Events"/>
        <meta itemprop="description" content="The Cornell Lab of Ornithology offers a variety of programs and events for visitors of all ages. Please see our events calendar (below) or call 1-800-843-BIRD for more information.



              Virtual Programs
              Virtual programs include free webinars and family programs and expert-led paid workshops. Check the"/>
        <meta itemprop="image" content="https://www.birds.cornell.edu/home/wp-content/uploads/2018/11/observatory.jpg"/>
        <meta itemprop="author" content="bce_admin_user"/>
        <!--<meta itemprop="publisher" content="Birds, Cornell Lab of Ornithology"/>--> <!-- To solve: The attribute publisher.itemtype has an invalid value -->
        <!-- Twitter Cards -->
        <meta name="twitter:title" content="Events"/>
        <meta name="twitter:url" content="https://www.birds.cornell.edu/home/visit/events/"/>
        <meta name="twitter:description" content="The Cornell Lab of Ornithology offers a variety of programs and events for visitors of all ages. Please see our events calendar (below) or call 1-800-843-BIRD for more information.



              Virtual Programs
              Virtual programs include free webinars and family programs and expert-led paid workshops. Check the"/>
        <meta name="twitter:image" content="https://www.birds.cornell.edu/home/wp-content/uploads/2018/11/observatory.jpg"/>
        <meta name="twitter:card" content="summary_large_image"/>
        <meta name="twitter:site" content="@cornellbirds"/>
        <!-- SEO -->
        <!-- Misc. tags -->
        <!-- is_singular -->
        <!-- END - Open Graph and Twitter Card Tags 3.2.0 -->


    </head>


    <body class="page-template-default page page-id-1248 page-child parent-pageid-1229 wp-embed-responsive theme-green nav-column tribe-no-js">

        <%@ include file="header.html" %> 

        <main id="tribe-events-pg-template" class="tribe-events-pg-template"><div class="tribe-events-before-html"></div><span class="tribe-events-ajax-loading"><img alt="Loading Events" data-src="https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/images/tribe-loading.gif" class="tribe-events-spinner-medium lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="><noscript><img class="tribe-events-spinner-medium" src="https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/images/tribe-loading.gif" alt="Loading Events" /></noscript></span>


            <article id="article" class="post-10000630 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent">

                <div class="content-container page-wide">

                    <section id="content" class="content" aria-label="Main content">

                        <div id="tribe-events-content" class="tribe-events-single tribe-blocks-editor">

                            <h1 class="tribe-events-single-event-title">Red-Whiskered Bulbul conference</h1>            

                            <div class="tribe-events-schedule tribe-clearfix">
                                <h2 class="tribe-events-schedule__datetime">
                                    <span class="tribe-events-schedule__date tribe-events-schedule__date--start">
                                        May 27		</span>

                                    <span class="tribe-events-schedule__separator tribe-events-schedule__separator--date">
                                        at 			</span>
                                    <span class="tribe-events-schedule__time tribe-events-schedule__time--start">
                                        8:30 am			</span>

                                    <span class="tribe-events-schedule__separator tribe-events-schedule__separator--time">
                                        –				</span>

                                    <span class="tribe-events-schedule__time tribe-events-schedule__time--end">
                                        10:00 am				</span>

                                </h2>
                            </div>



                            <div class="is-layout-flex wp-container-4 wp-block-columns">
                                <div class="is-layout-flow wp-block-column" style="flex-basis:66.66%">
                                    <figure class="">
                                        <img src="https://cdn.shopify.com/s/files/1/0020/1926/2510/products/red-whiskered-bulbul-2_1200x1200.jpg?v=1551037285">
                                    </figure>
                                    <br>
                                    <p>Join us for an evening of bird-filled poetic piano pop from Sparkbird, the musical project of queer singer-songwriter Stephan Nance. This concert will be INTERACTIVE – win swag from Sparkbird by playing BIRD BINGO while you listen! Learn more at Sparkbird is the musical project of queer singer-songwriter Stephan Nance, whose performing credits include multiple tours in Japan and Europe. Their album Look at the Harlequins! attracted the attention of Birding Magazine and the National Audubon Society with its references to 21 species of birds.
Stephan lives in Portland, Oregon, with their partner Adam, along with a 13-year-old Senegal parrot named Georgie, and a 42-year-old Yellow-naped parrot named Fred. Stephan is currently working on their next album and a very birdy young adult novel set in Eastern Oregon.

+ GOOGLE CALENDAR+ ICAL EXPORT
                                    </p>




                                    <div class="is-layout-flex wp-block-buttons"></div>


                                    <h2>Location</h2>
                                    <div class="tribe-block tribe-block__venue tribe-block__venue--has-map">


                                        <div class="tribe-block__venue__meta">
                                            <div class="tribe-block__venue__name">
                                                <h3>FPT University, Ho Chi Minh City Campus</h3>
                                            </div>


                                            <address class="tribe-block__venue__address">
                                                <span class="tribe-address">

                                                    <span class="tribe-street-address">003 High Tech Road</span>

                                                    <br>

                                                </span>

                                                <a class="tribe-events-gmap" href="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=159+Sapsucker+Woods+Road+Ithaca+NY+14850+United+States" title="Click to view a Google Map" target="_blank" rel="noreferrer noopener">+ Google Map</a>					</address>



                                        </div>

                                        <div class="tribe-block__venue__map">

                                            <iframe aria-label="Venue location map" width="100%" height="350px" frameborder="0" style="border:0" allowfullscreen="" data-src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDNsicAsP6-VuGtAb1O9riI3oc_NOb7IOU&amp;q=159+Sapsucker+Woods+Road+Ithaca+NY+NY+14850+United+States+" class=" lazyloaded" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" title="View location in Google Maps">
                                            </iframe></div>

                                    </div>
                                </div>



                                <div class="is-layout-flow wp-block-column" style="flex-basis:33.33%">

                                    <div class="tribe-events-single-section tribe-events-event-meta primary tribe-clearfix">


                                        <div class="tribe-events-meta-group tribe-events-meta-group-details">
                                            <h3 class="tribe-events-single-section-title">
                                                Details		
                                            </h3>
                                            <dl>


                                                <dt> Date: </dt>
                                                <dd>
                                                    <abbr class="tribe-events-abbr tribe-events-start-date published dtstart" title="2023-05-27"> May 27 </abbr>
                                                </dd>

                                                <dt> Time: </dt>
                                                <dd>
                                                    <div class="tribe-events-abbr tribe-events-start-time published dtstart" title="2023-05-27">
                                                        <div class="tribe-recurring-event-time">8:30 am–10:00 am</div>									</div>
                                                </dd>



                                                <dt>Category:</dt>Meeting
                                                
                                            <div class="is-content-justification-center is-layout-flex wp-container-1 wp-block-buttons">
                                                <div class="wp-block-button"><a class="wp-block-button__link has-orange-background-color has-background" href="member_meeting_register.jsp">Register Meeting</a></div>
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

                                            </dl>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="tribe-events-footer">
                            <h3 class="tribe-events-visuallyhidden">Event Navigation</h3>
                            <ul class="tribe-events-sub-nav">
                                <li class="tribe-events-nav-previous"><a href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-21/"><span>«</span> Beginner Bird Walk</a></li>
                                <li class="tribe-events-nav-next"><a href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-28/">Beginner Bird Walk <span>»</span></a></li>
                            </ul>
                        </div>
                </div>

                </section> 

                </div>

            </article>


            <section id="global-cta" aria-label="Call to action" class="global-cta">
                <div class="wp-block-group cta">

                    <h2>Don't miss a thing! Join our email list</h2>
                    <script data-hubspot-rendered="true">hbspt.forms.create({portalId: "95627", formId: "ee3402b4-bebe-48ff-870f-7e51695b366d"});</script>
                    <div id="hbspt-form-c5130a24-3b0a-4ee5-a933-0664caffedf7" class="hbspt-form" data-hs-forms-root="true">
                        <form id="hsForm_ee3402b4-bebe-48ff-870f-7e51695b366d" method="POST" accept-charset="UTF-8" enctype="multipart/form-data" novalidate="" action="https://forms.hsforms.com/submissions/v3/public/submit/formsnext/multipart/95627/ee3402b4-bebe-48ff-870f-7e51695b366d" class="hs-form-private hsForm_ee3402b4-bebe-48ff-870f-7e51695b366d hs-form-ee3402b4-bebe-48ff-870f-7e51695b366d hs-form-ee3402b4-bebe-48ff-870f-7e51695b366d_c5130a24-3b0a-4ee5-a933-0664caffedf7 hs-form stacked" target="target_iframe_ee3402b4-bebe-48ff-870f-7e51695b366d" data-instance-id="c5130a24-3b0a-4ee5-a933-0664caffedf7" data-form-id="ee3402b4-bebe-48ff-870f-7e51695b366d" data-portal-id="95627"><div class="hs_email hs-email hs-fieldtype-text field hs-form-field"><label id="label-email-ee3402b4-bebe-48ff-870f-7e51695b366d" class="" placeholder="Enter your Email Address" for="email-ee3402b4-bebe-48ff-870f-7e51695b366d"><span>Email Address</span><span class="hs-form-required">*</span></label><legend class="hs-field-desc" style="display: none;"></legend>
                                <div class="input"><input id="email-ee3402b4-bebe-48ff-870f-7e51695b366d" name="email" required="" placeholder="Enter your email" type="email" class="hs-input" inputmode="email" autocomplete="email" value=""></div></div><div class="hs_submit hs-submit"><div class="hs-field-desc" style="display: none;"></div>
                                <div class="actions"><input type="submit" class="hs-button primary large" value="Subscribe"></div></div>
                            <input name="hs_context" type="hidden" value="{&quot;embedAtTimestamp&quot;:&quot;1685177938503&quot;,&quot;formDefinitionUpdatedAt&quot;:&quot;1672780155224&quot;,&quot;disableCookieSubmission&quot;:&quot;true&quot;,&quot;renderRawHtml&quot;:&quot;true&quot;,&quot;isLegacyThemeAllowed&quot;:&quot;true&quot;,&quot;userAgent&quot;:&quot;Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50&quot;,&quot;pageTitle&quot;:&quot;Beginner Bird Walk | Birds, Cornell Lab of Ornithology&quot;,&quot;pageUrl&quot;:&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-27/?__hstc=181257784.be32163685d64de8af3236339b100540.1685172002340.1685172002340.1685177625873.2&amp;__hssc=181257784.6.1685177625873&amp;__hsfp=1596690040&amp;_gl=1*esyhvo*_ga*OTQ5Nzg4OTE0LjE2ODUxNzIwMDA.*_ga_QR4NVXZ8BM*MTY4NTE3NzYyNC4yLjEuMTY4NTE3NzkyOS4yNS4wLjA.&amp;_ga=2.77067221.1752550753.1685172000-949788914.1685172000&quot;,&quot;referrer&quot;:&quot;http://localhost:8080/&quot;,&quot;urlParams&quot;:{&quot;__hstc&quot;:&quot;181257784.be32163685d64de8af3236339b100540.1685172002340.1685172002340.1685177625873.2&quot;,&quot;__hssc&quot;:&quot;181257784.6.1685177625873&quot;,&quot;__hsfp&quot;:&quot;1596690040&quot;,&quot;_gl&quot;:&quot;1*esyhvo*_ga*OTQ5Nzg4OTE0LjE2ODUxNzIwMDA.*_ga_QR4NVXZ8BM*MTY4NTE3NzYyNC4yLjEuMTY4NTE3NzkyOS4yNS4wLjA.&quot;,&quot;_ga&quot;:&quot;2.77067221.1752550753.1685172000-949788914.1685172000&quot;},&quot;isHubSpotCmsGeneratedPage&quot;:false,&quot;hutk&quot;:&quot;b1c34786141bb12cb035702f36aa5205&quot;,&quot;__hsfp&quot;:1596690040,&quot;__hssc&quot;:&quot;161696355.2.1685177901406&quot;,&quot;__hstc&quot;:&quot;161696355.b1c34786141bb12cb035702f36aa5205.1685177901405.1685177901405.1685177901405.1&quot;,&quot;formTarget&quot;:&quot;#hbspt-form-c5130a24-3b0a-4ee5-a933-0664caffedf7&quot;,&quot;locale&quot;:&quot;en&quot;,&quot;timestamp&quot;:1685177943543,&quot;originalEmbedContext&quot;:{&quot;portalId&quot;:&quot;95627&quot;,&quot;formId&quot;:&quot;ee3402b4-bebe-48ff-870f-7e51695b366d&quot;,&quot;region&quot;:&quot;na1&quot;,&quot;target&quot;:&quot;#hbspt-form-c5130a24-3b0a-4ee5-a933-0664caffedf7&quot;,&quot;isBuilder&quot;:false,&quot;isTestPage&quot;:false,&quot;isPreview&quot;:false,&quot;isMobileResponsive&quot;:true},&quot;correlationId&quot;:&quot;c5130a24-3b0a-4ee5-a933-0664caffedf7&quot;,&quot;renderedFieldsIds&quot;:[&quot;email&quot;],&quot;captchaStatus&quot;:&quot;NOT_APPLICABLE&quot;,&quot;emailResubscribeStatus&quot;:&quot;NOT_APPLICABLE&quot;,&quot;isInsideCrossOriginFrame&quot;:false,&quot;source&quot;:&quot;forms-embed-1.3243&quot;,&quot;sourceName&quot;:&quot;forms-embed&quot;,&quot;sourceVersion&quot;:&quot;1.3243&quot;,&quot;sourceVersionMajor&quot;:&quot;1&quot;,&quot;sourceVersionMinor&quot;:&quot;3243&quot;,&quot;_debug_allPageIds&quot;:{},&quot;_debug_embedLogLines&quot;:[{&quot;clientTimestamp&quot;:1685177939420,&quot;level&quot;:&quot;INFO&quot;,&quot;message&quot;:&quot;Retrieved pageContext values which may be overriden by the embed context: {\&quot;pageTitle\&quot;:\&quot;Beginner Bird Walk | Birds, Cornell Lab of Ornithology\&quot;,\&quot;pageUrl\&quot;:\&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-27/?__hstc=181257784.be32163685d64de8af3236339b100540.1685172002340.1685172002340.1685177625873.2&amp;__hssc=181257784.6.1685177625873&amp;__hsfp=1596690040&amp;_gl=1*esyhvo*_ga*OTQ5Nzg4OTE0LjE2ODUxNzIwMDA.*_ga_QR4NVXZ8BM*MTY4NTE3NzYyNC4yLjEuMTY4NTE3NzkyOS4yNS4wLjA.&amp;_ga=2.77067221.1752550753.1685172000-949788914.1685172000\&quot;,\&quot;referrer\&quot;:\&quot;http://localhost:8080/\&quot;,\&quot;userAgent\&quot;:\&quot;Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50\&quot;,\&quot;urlParams\&quot;:{\&quot;__hstc\&quot;:\&quot;181257784.be32163685d64de8af3236339b100540.1685172002340.1685172002340.1685177625873.2\&quot;,\&quot;__hssc\&quot;:\&quot;181257784.6.1685177625873\&quot;,\&quot;__hsfp\&quot;:\&quot;1596690040\&quot;,\&quot;_gl\&quot;:\&quot;1*esyhvo*_ga*OTQ5Nzg4OTE0LjE2ODUxNzIwMDA.*_ga_QR4NVXZ8BM*MTY4NTE3NzYyNC4yLjEuMTY4NTE3NzkyOS4yNS4wLjA.\&quot;,\&quot;_ga\&quot;:\&quot;2.77067221.1752550753.1685172000-949788914.1685172000\&quot;},\&quot;isHubSpotCmsGeneratedPage\&quot;:false}&quot;},{&quot;clientTimestamp&quot;:1685177939422,&quot;level&quot;:&quot;INFO&quot;,&quot;message&quot;:&quot;Retrieved countryCode property from normalized embed definition response: \&quot;VN\&quot;&quot;},{&quot;clientTimestamp&quot;:1685177943536,&quot;level&quot;:&quot;INFO&quot;,&quot;message&quot;:&quot;Retrieved analytics values from API response which may be overriden by the embed context: {\&quot;hutk\&quot;:\&quot;b1c34786141bb12cb035702f36aa5205\&quot;}&quot;}]}"><iframe name="target_iframe_ee3402b4-bebe-48ff-870f-7e51695b366d" style="display: none;"></iframe></form></div></p>      </div>
            </section>
            <div class="tribe-events-after-html"></div>

        </main>            

        <%@ include file="footer.html" %> 


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

</html><!-- end html from header.php -->
