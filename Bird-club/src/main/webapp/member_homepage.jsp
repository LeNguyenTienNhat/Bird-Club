<%@page import="com.fptuni.prj301.demo.model.Image"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Base64" %>
<!--Header-->


<%@ include file="member_header.jsp" %>

<!DOCTYPE html>
<html class="no-js"  lang="en-US" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#">
    <head>
        <meta charset="utf-8">
        <link rel="icon" href="https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/favicon.jsp">
        <link href="https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/images/apple-icon-touch.jsp" rel="apple-touch-icon" />	
        <title>Home</title>
        <link rel="alternate" type="application/rss+xml" title="Birds, Cornell Lab of Ornithology &raquo; Feed" href="https://www.birds.cornell.edu/home/feed/" />
        <link rel="alternate" type="application/rss+xml" title="Birds, Cornell Lab of Ornithology &raquo; Comments Feed" href="https://www.birds.cornell.edu/home/comments/feed/" />
        <link rel="alternate" type="text/calendar" title="Birds, Cornell Lab of Ornithology &raquo; iCal Feed" href="https://www.birds.cornell.edu/home/events/?ical=1" />
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
        <link rel='stylesheet' id='nanogallery2-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/styles/nanogallery2.min.css?ver=1.0' type='text/css' media='all' />
        <link rel='stylesheet' id='nanogallery2woff-css' href='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/styles/nanogallery2.woff.min.css?ver=1.0' type='text/css' media='all' />
        <link rel='stylesheet' id='zotpress.shortcode.min.css-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/zotpress/css/zotpress.shortcode.min.css?ver=6.1.1' type='text/css' media='all' />
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/jquery.min.js?ver=3.6.1' id='jquery-core-js'></script>
        <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2' id='jquery-migrate-js'></script>
        <link rel="https://api.w.org/" href="https://www.birds.cornell.edu/home/wp-json/" /><link rel="alternate" type="application/json" href="https://www.birds.cornell.edu/home/wp-json/wp/v2/pages/5" /><link rel='shortlink' href='https://www.birds.cornell.edu/home/' />
        <link rel="alternate" type="application/json+oembed" href="https://www.birds.cornell.edu/home/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2F" />
        <link rel="alternate" type="text/xml+oembed" href="https://www.birds.cornell.edu/home/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2F&#038;format=xml" />
        <link rel="canonical" href="https://www.birds.cornell.edu/home/" />
        <meta name="description" content="Visitor Center Hours 10 a.m. –4 p.m. Trails open dawn to dusk Plan Your Visit Dive Into Bird ID and Info All About Birds Explore and Contribute eBird Scienc ..." />
        <script type="application/ld+json">{"@context":"https:\/\/schema.org","@graph":[{"@type":"Organization","@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization","url":"https:\/\/www.birds.cornell.edu\/home","name":"Birds, Cornell Lab of Ornithology","description":""},{"@type":"WebSite","@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-website","url":"https:\/\/www.birds.cornell.edu\/home","name":"Birds, Cornell Lab of Ornithology","encoding":"UTF-8","potentialAction":{"@type":"SearchAction","target":"https:\/\/www.birds.cornell.edu\/home\/search\/{search_term_string}\/","query-input":"required name=search_term_string"}},{"@type":"Person","@id":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/#schema-author","name":"bce_admin_user","url":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/"},{"@type":"WebPage","@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-webpage","isPartOf":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-website"},"publisher":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization"},"url":"https:\/\/www.birds.cornell.edu\/home\/"},{"@type":"Article","mainEntityOfPage":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-webpage"},"author":{"@id":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/#schema-author"},"publisher":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization"},"dateModified":"2023-05-17T09:09:13","datePublished":"2017-01-24T16:23:12","headline":"Cornell Lab of Ornithology\u2014Home | Birds, Cornell Lab of Ornithology","description":"Visitor Center Hours 10 a.m. \u20134 p.m. Trails open dawn to dusk Plan Your Visit Dive Into Bird ID and Info All About Birds Explore and Contribute eBird Scienc ...","name":"Cornell Lab of Ornithology\u2014Home","image":{"@type":"ImageObject","@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-article-image","url":"https:\/\/www.birds.cornell.edu\/home\/wp-content\/uploads\/2022\/11\/RCKinglet-Dudec-ML-FI.gif","height":1125,"width":1500},"thumbnailUrl":"https:\/\/www.birds.cornell.edu\/home\/wp-content\/uploads\/2022\/11\/RCKinglet-Dudec-ML-FI.gif"}]}</script>
        <meta name="tec-api-version" content="v1"><meta name="tec-api-origin" content="https://www.birds.cornell.edu/home"><link rel="alternate" href="https://www.birds.cornell.edu/home/wp-json/tribe/events/v1/" />		<script>
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
    <body class="home page-template page-template-page-home page-template-page-home-php page page-id-5 wp-embed-responsive theme-green nav-column tribe-no-js">
        <main id="main-content">  

            <div class="content-container home" style="padding: 0px">
                <section id="content" class="content" aria-label="Main content">            
                    <style>
                        #hero-wrapper .hero-text { width: 520px !important; }
                    </style>
                    <div class="is-layout-flow wp-block-group page-section has-background-image" style="background-image:url(images/banner.jsp)">
                        <div class="is-layout-flex wp-container-11 wp-block-columns">
                            <div class="is-layout-flow wp-block-column" style="flex-basis:50%">
                                <h2 class="has-small-font-size" id="science-and-innovation">Chim Owner's de facto:</h2>
                                <h3 class="remove-margin-top has-large-font-size">In connection, we trust</h3>
                                <p>We bring together our members from all walks of life to exchange new knowledge, share experiences, and help conserve our shared natural world.</p>
                                <div class="is-layout-flex wp-block-buttons">
                                    <div class="wp-block-button"><a class="wp-block-button__link wp-element-button" href="member_events.jsp">What's happening?</a></div>
                                </div></div>
                            <div class="is-layout-flow wp-block-column"></div></div>
                    </div>


                    <!--                    <div class="is-layout-flow wp-block-group alignfull page-section macaulay">
                                            <h2 class="has-text-align-center has-large-font-size" id="macaulay-library-photowall">Chim Owners' Library</h2>
                                            <p>Epic pictures taken by experts from Chim Owners. For real.</p>
                    
                                            <div id="my_nanogallery2"></div>
                    
                                            <div class="is-horizontal is-content-justification-center is-layout-flex wp-container-33 wp-block-buttons">
                                                <div class="wp-block-button"><a class="wp-block-button__link wp-element-button" href="member_gallery.jsp">Browse More Photos</a></div>
                                            </div>
                                        </div>-->
                    <style>
                        #hero-wrapper .hero-text { width: 600px; }
                    </style>

                    <div class="is-layout-flow wp-block-group alignfull page-section what-you-can-do">
                        <!--                        <h2 class="has-text-align-center has-orange-color has-text-color has-small-font-size" id="what-you-can-do">What you can do</h2>-->
                        <h3 class="has-text-align-right has-orange-color has-text-color has-large-font-size">News</h3>
                        <div style="height:10px" aria-hidden="true" class="wp-block-spacer"></div>
                        <div class="is-layout-flex wp-container-15 wp-block-columns">
                            <div class="is-layout-flow wp-block-column">
                                <div class="article-list card-display carousel card-three ">
                                    <ul>
                                        <c:forEach var="n" items="${news}" varStatus="loop">
                                            <li class="article-item">
                                                <div class="article-item-container">
                                                    <div class="article-item-media content-article" data-link-to="http://www.seychellesnewsagency.com/articles/2332/Eradication+success++Seychelles+wins+war+against+invasive+red-whiskered+bulbul">
                                                        <div class="article-item-media-ratio">
                                                            <c:set var="base64Image" value="${Base64.getEncoder().encodeToString(n.getPicture())}" />
                                                            <img data-srcset="data:image/jsp;base64,${base64Image} 720w, data:image/jsp;base64,${base64Image} 768w, data:image/jsp;base64,${base64Image} 1280w, data:image/jsp;base64,${base64Image} 480w, data:image/jsp;base64,${base64Image} 1872w" loading="lazy" data-src="data:image/jsp;base64,${base64Image}" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" />
                                                            <noscript>
                                                            <img src="data:image/jsp;base64,${base64Image}" srcset="data:image/jsp;base64,${base64Image} 720w, data:image/jsp;base64,${base64Image} 768w, data:image/jsp;base64,${base64Image} 1280w, data:image/jsp;base64,${base64Image} 480w, data:image/jsp;base64,${base64Image} 1872w" sizes="(max-width: 480px) 100vw, 480px" loading="lazy" />
                                                            </noscript>
                                                        </div>
                                                    </div>
                                                    <div class="article-item-body">
                                                        <span class="attribution"></span>
                                                        <a class="article-item-link" href="${pageContext.request.contextPath}/news?action=details&NID=${n.getNID()}">
                                                            <span class="article-item-header">${n.getTitle()}</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul></div>
                            </div>

                        </div>
                    </div>
                    <!-- Field trip-->
                    <div class="is-layout-flow wp-block-group alignfull page-section what-you-can-do">
                        <!--                        <h2 class="has-text-align-right has-orange-color has-text-color has-small-font-size" id="what-you-can-do">Where you can do</h2>-->
                        <h3 class="has-text-align-right has-orange-color has-text-color has-large-font-size">Field trip </h3>
                        <div style="height:10px" aria-hidden="true" class="wp-block-spacer"></div>
                        <div class="is-layout-flex wp-container-15 wp-block-columns">
                            <div class="is-layout-flow wp-block-column">
                                <div class="article-list card-display carousel card-three ">
                                    <ul>
                                        <c:forEach var="e" items="${eventsList}" varStatus="loop">
                                            <li class="article-item">
                                                <div class="article-item-container">
                                                    <div class="article-item-media content-article" data-link-to="member_fieldtrip_details.jsp">
                                                        <c:set var="base64ImageF" value="${Base64.getEncoder().encodeToString(e.getImage())}" />
                                                        <c:if test="${not empty base64ImageF}">
                                                            <div class="article-item-media-ratio">
                                                                <img data-srcset="data:image/jsp;base64,${base64ImageF} 720w, data:image/jsp;base64,${base64ImageF} 768w, data:image/jsp;base64,${base64ImageF} 1280w, data:image/jsp;base64,${base64ImageF} 480w, data:image/jsp;base64,${base64ImageF} 1872w" loading="lazy" data-src="data:image/jsp;base64,${base64ImageF}" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" />
                                                                <noscript>
                                                                <img src="data:image/jsp;base64,${base64ImageF}" srcset="data:image/jsp;base64,${base64ImageF} 720w, data:image/jsp;base64,${base64ImageF} 768w, data:image/jsp;base64,${base64ImageF} 1280w, data:image/jsp;base64,${base64ImageF} 480w, data:image/jsp;base64,${base64ImageF} 1872w" sizes="(max-width: 480px) 100vw, 480px" loading="lazy" />
                                                                </noscript>
                                                            </div>
                                                        </c:if>
                                                    </div>
                                                    <div class="article-item-body">
                                                        <span class="attribution">${e.getStartDate()} – ${e.getEndDate()}</span>
                                                        <a class="article-item-link" href="${pageContext.request.contextPath}/FieldTripParticipantsController?action=view&FID=${e.getFID()}">
                                                            <span class="article-item-header">${e.getName()}</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul></div>
                            </div>

                        </div>
                        <!--Meeting-->
                        <div class="is-layout-flow wp-block-group alignfull page-section what-you-can-do">
                            <!--                        <h2 class="has-text-align-center has-orange-color has-text-color has-small-font-size" id="what-you-can-do">What you can do</h2>-->
                            <h3 class="has-text-align-right has-orange-color has-text-color has-large-font-size">Meeting</h3>
                            <div style="height:10px" aria-hidden="true" class="wp-block-spacer"></div>
                            <div class="is-layout-flex wp-container-15 wp-block-columns">
                                <div class="is-layout-flow wp-block-column">
                                    <div class="article-list card-display carousel card-three ">
                                        <ul>
                                            <c:forEach var="m" items="${meetingsList}" varStatus="loop">
                                                <li class="article-item">
                                                    <div class="article-item-container">
                                                        <div class="article-item-media content-article" data-link-to="member_tournament.jsp">
                                                            <c:set var="base64ImageM" value="${Base64.getEncoder().encodeToString(m.getImage())}" />
                                                            <c:if test="${not empty base64ImageM}">
                                                                <div class="article-item-media-ratio">
                                                                    <img data-srcset="data:image/jsp;base64,${base64ImageM} 720w, data:image/jsp;base64,${base64ImageM} 768w, data:image/jsp;base64,${base64ImageM} 1280w, data:image/jsp;base64,${base64ImageM} 480w, data:image/jsp;base64,${base64ImageM} 1872w" loading="lazy" data-src="data:image/jsp;base64,${base64ImageM}" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" />
                                                                    <noscript>
                                                                    <img src="data:image/jsp;base64,${base64ImageM}" srcset="data:image/jsp;base64,${base64ImageM} 720w, data:image/jsp;base64,${base64ImageM} 768w, data:image/jsp;base64,${base64ImageM} 1280w, data:image/jsp;base64,${base64ImageM} 480w, data:image/jsp;base64,${base64ImageM} 1872w" sizes="(max-width: 480px) 100vw, 480px" loading="lazy" />
                                                                    </noscript>
                                                                </div>
                                                            </c:if>
                                                        </div>
                                                        <div class="article-item-body">
                                                            <span class="attribution">${m.getStartDate()} – ${m.getEndDate()}</span>
                                                            <a class="article-item-link" href="${pageContext.request.contextPath}/MeetingParticipantsController?action=view&MeID=${m.getMeID()}">
                                                                <span class="article-item-header">${m.getName()}</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul></div>
                                </div>

                            </div>
                        </div>

                        <!--Tournament-->
                        <div class="is-layout-flow wp-block-group alignfull page-section what-you-can-do">
                            <!--                        <h2 class="has-text-align-center has-orange-color has-text-color has-small-font-size" id="what-you-can-do">What you can do</h2>-->
                            <h3 class="has-text-align-right has-orange-color has-text-color has-large-font-size">Tournaments</h3>
                            <div style="height:10px" aria-hidden="true" class="wp-block-spacer"></div>
                            <div class="is-layout-flex wp-container-15 wp-block-columns">
                                <div class="is-layout-flow wp-block-column">
                                    <div class="article-list card-display carousel card-three ">
                                        <ul>
                                            Copy code
                                            <c:forEach var="t" items="${tList}" varStatus="loop">
                                                <li class="article-item">
                                                    <div class="article-item-container">
                                                        <div class="article-item-media content-article" data-link-to="member_tournament.jsp">
                                                            <c:set var="base64ImageT" value="${Base64.getEncoder().encodeToString(t.getImage())}" />
                                                            <c:if test="${not empty base64ImageT}">
                                                                <div class="article-item-media-ratio">
                                                                    <img data-srcset="data:image/jsp;base64,${base64ImageT} 720w, data:image/jsp;base64,${base64ImageT} 768w, data:image/jsp;base64,${base64ImageT} 1280w, data:image/jsp;base64,${base64ImageT} 480w, data:image/jsp;base64,${base64ImageT} 1872w" loading="lazy" data-src="data:image/jsp;base64,${base64ImageT}" data-sizes="(max-width: 480px) 100vw, 480px" class="lazyload" />
                                                                    <noscript>
                                                                    <img src="data:image/jsp;base64,${base64ImageT}" srcset="data:image/jsp;base64,${base64ImageT} 720w, data:image/jsp;base64,${base64ImageT} 768w, data:image/jsp;base64,${base64ImageT} 1280w, data:image/jsp;base64,${base64ImageT} 480w, data:image/jsp;base64,${base64ImageT} 1872w" sizes="(max-width: 480px) 100vw, 480px" loading="lazy" />
                                                                    </noscript>
                                                                </div>
                                                            </c:if>                                                        </div>
                                                        <div class="article-item-body">
                                                            <span class="attribution">${t.getStartDate()} – ${t.getEndDate()}</span>
                                                            <a class="article-item-link" href="${pageContext.request.contextPath}/TparticipationController?action=view&TID=${t.getTID()}">
                                                                <span class="article-item-header">${t.getName()}</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul></div>
                                </div>

                            </div>
                        </div>

                        <style>
                            #hero-wrapper .hero-text { width: 600px; }
                        </style>  

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

            <div class="is-layout-flex wp-container-44 wp-block-columns">
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



                    <div class="is-layout-flex wp-container-42 wp-block-columns">
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

    </div>		
    <noscript><iframe 
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
    <script> /* <![CDATA[ */var tribe_l10n_datatables = {"aria": {"sort_ascending": ": activate to sort column ascending", "sort_descending": ": activate to sort column descending"}, "length_menu": "Show _MENU_ entries", "empty_table": "No data available in table", "info": "Showing _START_ to _END_ of _TOTAL_ entries", "info_empty": "Showing 0 to 0 of 0 entries", "info_filtered": "(filtered from _MAX_ total entries)", "zero_records": "No matching records found", "search": "Search:", "all_selected_text": "All items on this page were selected. ", "select_all_link": "Select all pages", "clear_selection": "Clear Selection.", "pagination": {"all": "All", "next": "Next", "previous": "Previous"}, "select": {"rows": {"0": "", "_": ": Selected %d rows", "1": ": Selected 1 row"}}, "datepicker": {"dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"], "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesShort": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesMin": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], "nextText": "Next", "prevText": "Prev", "currentText": "Today", "closeText": "Done", "today": "Today", "clear": "Clear"}};/* ]]> */</script><style id='core-block-supports-inline-css' type='text/css'>
        .wp-block-buttons.wp-container-18{justify-content:flex-end;}.wp-block-buttons.wp-container-1,.wp-block-buttons.wp-container-3,.wp-block-buttons.wp-container-5,.wp-block-buttons.wp-container-28,.wp-block-buttons.wp-container-33{justify-content:center;}.wp-block-columns.wp-container-7,.wp-block-columns.wp-container-11,.wp-block-columns.wp-container-15,.wp-block-columns.wp-container-20,.wp-block-columns.wp-container-24,.wp-block-columns.wp-container-31,.wp-block-columns.wp-container-42,.wp-block-columns.wp-container-44{flex-wrap:nowrap;}
    </style>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/swv/js/index.js?ver=5.7.2' id='swv-js'></script>
    <script type='text/javascript' id='contact-form-7-js-extra'>
        /* <![CDATA[ */
        var wpcf7 = {"api": {"root": "https:\/\/www.birds.cornell.edu\/home\/wp-json\/", "namespace": "contact-form-7\/v1"}, "cached": "1"};
        /* ]]> */
    </script>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.7.2' id='contact-form-7-js'></script>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/wp-smush-pro/app/assets/js/smush-lazy-load.min.js?ver=3.12.3' id='smush-lazy-load-js'></script>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/foundation.min.js?ver=6.1.1' id='foundation-js-js'></script>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/slick.min.js?ver=6.1.1' id='slick-js-js'></script>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2/scripts/scripts.js?ver=1684241978' id='bp-site-js-js'></script>
    <script type='text/javascript' src='https://code.jquery.com/ui/1.12.1/jquery-ui.min.js' id='jquery-ui-js'></script>
    <script type='text/javascript' id='bp-bce-site-js-js-extra'>
        /* <![CDATA[ */
        var wp_post_vars = {"postSlug": "home-page"};
        /* ]]> */
    </script>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/scripts/scripts.js?ver=1684846858' id='bp-bce-site-js-js'></script>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/scripts/jquery.nanogallery2.min.js' id='nanogallery2-js'></script>
    <script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/themes/birdpress2-bce/scripts/photowall.js' id='photowall-js'></script>		
</body>	
</html>