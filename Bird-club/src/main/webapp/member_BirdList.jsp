<%-- 
    Document   : member_BirdList
    Created on : Jun 4, 2023, 2:09:00 PM
    Author     : Tue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html class="no-js" lang="en-US" xmlns:og="http://ogp.me/ns#" xmlns:fb="http://ogp.me/ns/fb#">
    <head>
        <meta charset="utf-8">
        <title>Bird List</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta class="foundation-mq">
        <link rel="icon" href="https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/favicon.png">
        <link href="https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/images/apple-icon-touch.png" rel="apple-touch-icon" />

        <meta name='robots' content='max-image-preview:large' />
        <link rel='dns-prefetch' href='//www.allaboutbirds.org' />
        <link rel='dns-prefetch' href='//code.jquery.com' />
        <link rel='dns-prefetch' href='//js.hscta.net' />
        <link rel="alternate" type="application/rss+xml" title="All About Birds &raquo; Feed" href="https://www.allaboutbirds.org/news/feed/" />
        <link rel="alternate" type="application/rss+xml" title="All About Birds &raquo; Comments Feed" href="https://www.allaboutbirds.org/news/comments/feed/" />
        <link rel="alternate" type="text/calendar" title="All About Birds &raquo; iCal Feed" href="https://www.allaboutbirds.org/news/events/?ical=1" />
        <link rel="alternate" type="application/rss+xml" title="All About Birds &raquo; A Modest Proposal: Can eBird Help Choose Better State Birds? [Part 1] Comments Feed" href="https://www.allaboutbirds.org/news/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1/feed/" />
        <link rel='stylesheet' id='tribe-events-pro-mini-calendar-block-styles-css' href='https://www.allaboutbirds.org/news/wp-content/plugins/events-calendar-pro/src/resources/css/tribe-events-pro-mini-calendar-block.min.css?ver=6.0.5.1' media='all' />
        <link rel='stylesheet' id='wp-block-library-css' href='https://www.allaboutbirds.org/news/wp-includes/css/dist/block-library/style.min.css?ver=6.1.1' media='all' />
        <style id='global-styles-inline-css' type='text/css'>
            body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--color--darkgray: #767676;--wp--preset--color--mediumgray: #5f6368;--wp--preset--color--orange: #c5541c;--wp--preset--color--green: #587624;--wp--preset--color--blue: #12568f;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');--wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');--wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');--wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');--wp--preset--duotone--midnight: url('#wp-duotone-midnight');--wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');--wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');--wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}.wp-block-button .wp-block-button__link{--wp--preset--color--orange: #c5541c;--wp--preset--color--green: #587624;--wp--preset--color--blue: #12568f;--wp--preset--font-size--large: 1.5rem;--wp--preset--font-size--default: 1.25rem;--wp--preset--font-size--small: 1rem;}.wp-block-pullquote{--wp--preset--font-size--default: 1.5rem;--wp--preset--font-size--small: 1.25rem;--wp--preset--font-size--smaller: 1.125rem;}.wp-block-cover{--wp--preset--color--black: #000000;}.wp-block-group{--wp--preset--color--bluegray: #f3f7fb;--wp--preset--color--lightgray: #efefef;--wp--preset--color--gray: #5f6368;--wp--preset--color--darkgray: #767676;}h1,h2,h3,h4,h5,h6{--wp--preset--font-size--small: S;--wp--preset--font-size--medium: M;--wp--preset--font-size--large: L;}p{--wp--preset--font-size--small: S;--wp--preset--font-size--medium: M;--wp--preset--font-size--large: L;}body { margin: 0;--wp--style--global--content-size: 100%;--wp--style--global--wide-size: 75rem; }.wp-site-blocks > .alignleft { float: left; margin-right: 2em; }.wp-site-blocks > .alignright { float: right; margin-left: 2em; }.wp-site-blocks > .aligncenter { justify-content: center; margin-left: auto; margin-right: auto; }:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}body{padding-top: 0px;padding-right: 0px;padding-bottom: 0px;padding-left: 0px;}a:where(:not(.wp-element-button)){text-decoration: underline;}.wp-element-button, .wp-block-button__link{background-color: #32373c;border-width: 0;color: #fff;font-family: inherit;font-size: inherit;line-height: inherit;padding: calc(0.667em + 2px) calc(1.333em + 2px);text-decoration: none;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-color{color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-color{color: var(--wp--preset--color--mediumgray) !important;}.has-orange-color{color: var(--wp--preset--color--orange) !important;}.has-green-color{color: var(--wp--preset--color--green) !important;}.has-blue-color{color: var(--wp--preset--color--blue) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-background-color{background-color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-background-color{background-color: var(--wp--preset--color--mediumgray) !important;}.has-orange-background-color{background-color: var(--wp--preset--color--orange) !important;}.has-green-background-color{background-color: var(--wp--preset--color--green) !important;}.has-blue-background-color{background-color: var(--wp--preset--color--blue) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-darkgray-border-color{border-color: var(--wp--preset--color--darkgray) !important;}.has-mediumgray-border-color{border-color: var(--wp--preset--color--mediumgray) !important;}.has-orange-border-color{border-color: var(--wp--preset--color--orange) !important;}.has-green-border-color{border-color: var(--wp--preset--color--green) !important;}.has-blue-border-color{border-color: var(--wp--preset--color--blue) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}.wp-block-button .wp-block-button__link.has-orange-color{color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-color{color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-color{color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-orange-background-color{background-color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-background-color{background-color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-background-color{background-color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-orange-border-color{border-color: var(--wp--preset--color--orange) !important;}.wp-block-button .wp-block-button__link.has-green-border-color{border-color: var(--wp--preset--color--green) !important;}.wp-block-button .wp-block-button__link.has-blue-border-color{border-color: var(--wp--preset--color--blue) !important;}.wp-block-button .wp-block-button__link.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.wp-block-button .wp-block-button__link.has-default-font-size{font-size: var(--wp--preset--font-size--default) !important;}.wp-block-button .wp-block-button__link.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.wp-block-pullquote.has-default-font-size{font-size: var(--wp--preset--font-size--default) !important;}.wp-block-pullquote.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.wp-block-pullquote.has-smaller-font-size{font-size: var(--wp--preset--font-size--smaller) !important;}.wp-block-cover.has-black-color{color: var(--wp--preset--color--black) !important;}.wp-block-cover.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.wp-block-cover.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.wp-block-group.has-bluegray-color{color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-color{color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-color{color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-color{color: var(--wp--preset--color--darkgray) !important;}.wp-block-group.has-bluegray-background-color{background-color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-background-color{background-color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-background-color{background-color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-background-color{background-color: var(--wp--preset--color--darkgray) !important;}.wp-block-group.has-bluegray-border-color{border-color: var(--wp--preset--color--bluegray) !important;}.wp-block-group.has-lightgray-border-color{border-color: var(--wp--preset--color--lightgray) !important;}.wp-block-group.has-gray-border-color{border-color: var(--wp--preset--color--gray) !important;}.wp-block-group.has-darkgray-border-color{border-color: var(--wp--preset--color--darkgray) !important;}h1.has-small-font-size,h2.has-small-font-size,h3.has-small-font-size,h4.has-small-font-size,h5.has-small-font-size,h6.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}h1.has-medium-font-size,h2.has-medium-font-size,h3.has-medium-font-size,h4.has-medium-font-size,h5.has-medium-font-size,h6.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}h1.has-large-font-size,h2.has-large-font-size,h3.has-large-font-size,h4.has-large-font-size,h5.has-large-font-size,h6.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}p.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}p.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}p.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}
            .wp-block-navigation a:where(:not(.wp-element-button)){color: inherit;}
            :where(.wp-block-columns.is-layout-flex) {gap: 2em;}
            .wp-block-pullquote{font-size: 1.5em;line-height: 1.6;}
        </style>
        <link rel='stylesheet' id='bp-site-css-css' href='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/styles/style.css?ver=1678365890' media='all' />
        <link rel='stylesheet' id='bp-aab-site-css-css' href='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2-aab/styles/style.css?ver=1684847008' media='all' />
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-includes/js/jquery/jquery.min.js?ver=3.6.1' id='jquery-core-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.3.2' id='jquery-migrate-js'></script>
        <link rel="https://api.w.org/" href="https://www.allaboutbirds.org/news/wp-json/" /><link rel="alternate" type="application/json" href="https://www.allaboutbirds.org/news/wp-json/wp/v2/posts/56828" /><link rel='shortlink' href='https://www.allaboutbirds.org/news/?p=56828' />
        <link rel="alternate" type="application/json+oembed" href="https://www.allaboutbirds.org/news/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.allaboutbirds.org%2Fnews%2Fa-modest-proposal-can-ebird-help-choose-better-state-birds-part-1%2F" />
        <link rel="alternate" type="text/xml+oembed" href="https://www.allaboutbirds.org/news/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.allaboutbirds.org%2Fnews%2Fa-modest-proposal-can-ebird-help-choose-better-state-birds-part-1%2F&#038;format=xml" />




        <link rel="canonical" href="https://www.allaboutbirds.org/news/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1/" />
        <meta name="description" content="We love cardinals, mockingbirds, and meadowlarks, too—but do these 3 species have to represent 18 separate states? We turned to eBird to find alternative st ..." />
        <script type="application/ld+json">{"@context":"https:\/\/schema.org","@graph":[{"@type":"Organization","@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-publishing-organization","url":"https:\/\/www.allaboutbirds.org\/news","name":"All About Birds"},{"@type":"WebSite","@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-website","url":"https:\/\/www.allaboutbirds.org\/news","name":"All About Birds","encoding":"UTF-8","potentialAction":{"@type":"SearchAction","target":"https:\/\/www.allaboutbirds.org\/news\/search\/{search_term_string}\/","query-input":"required name=search_term_string"}},{"@type":"Person","@id":"https:\/\/www.allaboutbirds.org\/news\/author\/hugh\/#schema-author","name":"Hugh Powell","url":"https:\/\/www.allaboutbirds.org\/news\/author\/hugh\/"},{"@type":"WebPage","@id":"https:\/\/www.allaboutbirds.org\/news\/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1\/#schema-webpage","isPartOf":{"@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-website"},"publisher":{"@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-publishing-organization"},"url":"https:\/\/www.allaboutbirds.org\/news\/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1\/"},{"@type":"Article","mainEntityOfPage":{"@id":"https:\/\/www.allaboutbirds.org\/news\/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1\/#schema-webpage"},"author":{"@id":"https:\/\/www.allaboutbirds.org\/news\/author\/hugh\/#schema-author"},"publisher":{"@id":"https:\/\/www.allaboutbirds.org\/news\/#schema-publishing-organization"},"dateModified":"2023-04-26T14:09:42","datePublished":"2023-04-05T10:54:36","headline":"A Modest Proposal: Can eBird Help Choose Better State Birds? [Part 1] | All About Birds","description":"We love cardinals, mockingbirds, and meadowlarks, too\u2014but do these 3 species have to represent 18 separate states? We turned to eBird to find alternative st ...","name":"A Modest Proposal: Can eBird Help Choose Better State Birds? [Part 1]","image":{"@type":"ImageObject","@id":"https:\/\/www.allaboutbirds.org\/news\/a-modest-proposal-can-ebird-help-choose-better-state-birds-part-1\/#schema-article-image","url":"https:\/\/www.allaboutbirds.org\/news\/wp-content\/uploads\/2023\/03\/State-Cardinal-blue-FI.jpg","height":750,"width":1000},"thumbnailUrl":"https:\/\/www.allaboutbirds.org\/news\/wp-content\/uploads\/2023\/03\/State-Cardinal-blue-FI.jpg"}]}</script>

        <meta name="tec-api-version" content="v1"><meta name="tec-api-origin" content="https://www.allaboutbirds.org/news"><link rel="alternate" href="https://www.allaboutbirds.org/news/wp-json/tribe/events/v1/" /> <script>
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

    <body class="post-template-default single single-post postid-56828 single-format-standard wp-embed-responsive theme-green nav-column tribe-no-js">
        <div id="main-container">

            <%@ include file="member_header.jsp" %>  

            <main id="main-content">

                <div class="content-container archive page-wider">
                    <header class="article-header" aria-label="Title" style="text-align: center">
                        <h1 id="archive-header" class="page-title"> My bird list</h1>
                    </header> 
                    <section aria-labelledby="archive-header">
                        <div class="wp-block-columns">
                            <div class="wp-block-column archive-content">
                                <div class="article-list list-style archives">
                                    <meta name='viewport' content='width=device-width, initial-scale=1'>
                                    <title>Snippet - BBBootstrap</title>
                                    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' rel='stylesheet'>
                                    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
                                    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                    <style>::-webkit-scrollbar {
                                            width: 8px;
                                        }
                                        /* Track */
                                        ::-webkit-scrollbar-track {
                                            background: #f1f1f1; 
                                        }

                                        /* Handle */
                                        ::-webkit-scrollbar-thumb {
                                            background: #888; 
                                        }

                                        /* Handle on hover */
                                        ::-webkit-scrollbar-thumb:hover {
                                            background: #555; 
                                        } body{background:#eee}.ratings i{font-size: 16px;color: red}.strike-text{color: red;text-decoration: line-through}.product-image{width: 100%}.dot{height: 7px;width: 7px;margin-left: 6px;margin-right: 6px;margin-top: 3px;background-color: blue;border-radius: 50%;display: inline-block}.spec-1{color: #938787;font-size: 15px}h5{font-weight: 400}.para{font-size: 16px}</style>
                                    </head>
                                    <body className='snippet-body'>                                         
                                        <table>
                                            <style>
                                                /* Table Styles */
                                                table {
                                                    width: 100%;
                                                    border-collapse: collapse;
                                                }

                                                td {
                                                    padding: 10px;
                                                    text-align: center;
                                                    border: 1px solid #ccc;
                                                }

                                                /* Event Card Styles */
                                                .tribe-events-calendar-list {
                                                    margin-bottom: 20px;
                                                }

                                                .tribe-events-calendar-list__event {
                                                    background-color: #f2f2f2;
                                                    border: 1px solid #ccc;
                                                    padding: 10px;
                                                    width: 500px; /* set the desired width */
                                                    height: 200px; /* set the desired height */
                                                }

                                                .tribe-events-calendar-list__event-title {
                                                    margin-top: 0;
                                                    margin-bottom: 10px;
                                                }

                                                .tribe-events-calendar-list__event-datetime {
                                                    font-weight: bold;
                                                }

                                                .tribe-events-calendar-list__event-title-link {
                                                    color: #333;
                                                    text-decoration: none;
                                                }

                                                /* Button Styles */
                                                .wp-block-button__link {
                                                    display: inline-block;
                                                    padding: 10px 20px;
                                                    background-color: #333;
                                                    color: #fff;
                                                    text-decoration: none;
                                                    border: none;
                                                    cursor: pointer;
                                                    transition: background-color 0.3s ease;
                                                }

                                                .wp-block-button__link:hover {
                                                    background-color: #555;
                                                }
                                                .status {
                                                    display: inline-flex;
                                                    align-items: center;
                                                    padding: 0.5rem 0.75rem;
                                                    font-weight: bold;
                                                    background-color: #C6F6D5;
                                                    color: #059669;
                                                    font-size: 1rem;
                                                    border-radius: 100px;
                                                }

                                                .search{
                                                    width: 100%;

                                                }
                                                .search-container {
                                                    position: relative;
                                                    display: inline-block;
                                                    margin-bottom: 20px;
                                                }

                                                .search-icon {
                                                    position: absolute;
                                                    top: 50%;
                                                    left: 5px;
                                                    transform: translateY(-50%);
                                                    color: #999;
                                                }

                                                #searchInput {
                                                    width: 150px; /* Adjust the width as needed */
                                                    padding: 5px 5px 5px 25px; /* Added padding to accommodate the icon */
                                                    border: 1px solid #ccc;
                                                    border-radius: 4px;
                                                }

                                                /* Position the search input on the right */
                                                #searchInput::placeholder {
                                                    text-align: left;
                                                }

                                                /* Align the search input to the right */
                                                #searchInput {
                                                    text-align: left;
                                                }
                                                .row {
                                                    display: grid;
                                                    grid-template-columns: 1fr 1fr;
                                                    grid-gap: 10px;
                                                    margin-bottom: 5px;
                                                }

                                                dt, dd {
                                                    padding: 5px;

                                                }
                                                .status-button {
                                                    display: inline-block;
                                                    padding: 5px 10px;
                                                    border: none;
                                                    border-radius: 1000px;
                                                    color: white;
                                                    font-weight: bold;
                                                    text-align: center;
                                                    text-decoration: none;
                                                    cursor: pointer;
                                                }


                                                .status-pending {
                                                    background-color: #dcfce7;
                                                    color: #166534;
                                                }

                                                .status-formClosed {
                                                    background-color: #fef9c3;
                                                    color: #804d5e;
                                                    margin-right: 10px;

                                                }

                                                .status-Trending {
                                                    background-color: #FEE2E2;
                                                    color: #991b1b;
                                                }

                                                .status-Normal {
                                                    background-color: darkgray;
                                                    color: #1f2937;
                                                }
                                                .add-container {
                                                    margin-left: auto; /* Pushes the add container to the end of the row */
                                                }
                                                .button-container {
                                                    display: flex;
                                                    justify-content: space-between;
                                                }

                                                .add-button {
                                                    margin-left: auto;
                                                }
                                                .button {
                                                    display: flex;
                                                    justify-content: flex-end;
                                                }
                                                .backdrop {
                                                    position: fixed;
                                                    top: 0;
                                                    left: 0;
                                                    width: 100%;
                                                    height: 100%;
                                                    background-color: rgba(0, 0, 0, 0.5);
                                                    backdrop-filter: blur(5px); /* Apply blur effect */
                                                    z-index: 999;
                                                    display: none;
                                                }

                                                .popup {
                                                    margin-top: 50px;
                                                    position: fixed;
                                                    top: 50%;
                                                    left: 50%;
                                                    transform: translate(-50%, -50%);
                                                    background-color: white;
                                                    padding: 20px;
                                                    z-index: 1000;
                                                    display: none;
                                                }

                                                .form-group {
                                                    margin-bottom: 15px;
                                                }

                                                label {
                                                    display: block;
                                                    font-weight: bold;
                                                }

                                                input[type="text"],
                                                textarea {
                                                    width: 100%;
                                                    padding: 5px;
                                                    border: 1px solid #ccc;
                                                    border-radius: 4px;
                                                }

                                                button[type="submit"] {
                                                    margin-top: 10px;

                                                }

                                                .button-container {
                                                    display: flex;
                                                    flex-direction: column;
                                                    align-items: center;
                                                    margin-top: 20px;
                                                    text-align: center;
                                                }

                                                .button-container h2 {
                                                    margin-bottom: 10px;
                                                }

                                                .button-container .add-button {
                                                    background-color: #4caf50;
                                                    color: #fff;
                                                    border: none;
                                                    padding: 10px 20px;
                                                    border-radius: 4px;
                                                    cursor: pointer;
                                                    margin-top: 10px;
                                                }

                                                .button-container .add-button:hover {
                                                    background-color: #45a049;
                                                }

                                                .button-container .add-button:focus {
                                                    outline: none;
                                                }

                                                .button-container button {
                                                    background-color: transparent;
                                                    color: #000;
                                                    border: none;
                                                    padding: 0;
                                                    cursor: pointer;
                                                    margin-top: 10px;
                                                    display: flex;
                                                    align-items: center;
                                                    justify-content: center;
                                                }

                                                .button-container button:hover {
                                                    color: #999;
                                                }

                                                .button-container button:focus {
                                                    outline: none;
                                                }

                                                .button-container .close-button {
                                                    order: -1;
                                                    margin-right: 10px;
                                                }


                                            </style>
                                            <div class="row">
                                                <div class="search-container">
                                                    <i class="fas fa-search search-icon"></i>
                                                    <input type="text" id="searchInput" placeholder="Search">
                                                </div>
                                                <div class="add-container">
                                                    <a href="member_addbird.jsp" class="nav-link"><i class="fas fa-plus"></i>Add Bird</a>
                                                </div>


                                            </div>
                                            <style>
                                                .table-heading {
                                                    text-align: center;
                                                    text-size: 100px;
                                                }
                                            </style>                                        
                                            <tr >

                                                <td style="text-align: center;">Bird Name</td>
                                                <td style="text-align: center;">Image</td>
                                                <td style="text-align: center;"></td>
                                                <c:if test="${empty birdList}">
                                                <tr>
                                                    <td colspan="2">
                                                        <div>
                                                            <p>No bird found.</p>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:if>

                                            <c:if test="${not empty birdList}">
                                                <c:forEach var="bird" items="${birdList}">
                                                    <tr>
                                                        <td style="text-align: center;">${bird.getName()}</td>
                                                        <td >
                                                            <img src="data:image/png;base64,${Base64.getEncoder().encodeToString(bird.profilePic)}"
                                                                 alt="Description of the image"
                                                                 style="display: block; margin: auto; width: 200px; height: 150px;">
                                                        </td>
                                                        <td  text-align: center;">
                                                             <form action="${pageContext.request.contextPath}/BirdProfileController?action=view&BID=${bird.getBID()}" method="POST">
                                                                <input type="hidden" name="action" value="viewbirddetail">
                                                                <input type="hidden" name="BID" value="${bird.getBID()}" />                                                                                                                      
                                                                <button type="submit" class="wp-block-button__link wp-element-button">Detail</button>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                        </table>
                                        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js'></script>
                                        <script type='text/javascript' src='#'></script>
                                        <script type='text/javascript' src='#'></script>
                                        <script type='text/javascript' src='#'></script>
                                        <script type='text/javascript'>#</script>
                                        <script type='text/javascript'>var myLink = document.querySelector('a[href="#"]');
                                            myLink.addEventListener('click', function (e) {
                                                e.preventDefault();
                                            });</script>
                                </div>

                            </div>
                        </div>
                    </section>
                </div>
            </main>

            <%@ include file="member_footer.jsp" %>
        </div>

        <div class="reveal" id="search-modal" data-reveal role="dialog" data-animation-in="fade-in fast" aria-label="Search">
            <button class="close-button" data-close aria-label="Close" type="button"><span class="text">Cancel</span> <span class="symbol" aria-hidden="true">&times;</span></button>
            <div class="search-container">
                <div class="search-area row">
                    <form role="search" method="get" class="search-form" action="/news/search/">
                        <span class="fa fa-search" aria-hidden="true"></span>
                        <label for="modal-search" class="sr-only">Search for species name or keywords</label>
                        <input id="modal-search" type="search" class="search-field" placeholder="Enter species name or keyword" value="" name="q" title="Search for:" />
                        <input type="submit" class="search-submit button" value="Search" />
                    </form>
                </div>
            </div>
            <div class="content-container page-wider">
                <p>Or Browse Bird Guide by <a href="/guide/browse/taxonomy" target="_self">Family</a> or <a href="/guide/browse" target="_self">Shape</a></p>
            </div>
            <section class="gray-bar-promotion" aria-label="Try Merlin">
                <div class="merlin-cta">
                    <p>Need Bird ID Help?
                        <a role="button" class="button" tabindex="0" href="javascript:void(0);" data-open="merlin-id">Try Merlin</a></p>
                </div>
            </section>
        </div>


        <div class="reveal" id="newsletter-modal" data-reveal role="dialog" data-animation-in="fade-in fast" data-v-offset="0" aria-label="Newsletter Sign Up">
            <button class="close-button" data-close aria-label="Close" type="button"><span class="text">Cancel</span> <span class="symbol" aria-hidden="true">&times;</span></button>
            <div class="content">
                <h2 class="has-text-align-center">Don't miss a thing! Join our email list</h2>
                <p class="has-text-align-center">The Cornell Lab will send you updates about birds, <br>birding, and opportunities to help bird conservation.</p>
                <p><div class="hubspot-news">
                    <script type="text/javascript" charset="utf-8" src="//js.hsforms.net/forms/current.js"></script>
                    <script type="text/javascript">
                                            hbspt.forms.create({
                                                portalId: '95627',
                                                formId: 'de085739-e692-431e-b987-0736c9c7e87a',
                                                target: '.hubspot-news'
                                            });
                    </script>
                </div></p>
                <div class="hubspot-news"></div> </div>
        </div>



        <section class="reveal merlin-web-interact" id="merlin-id" data-reveal role="dialog" data-animation-in="slide-in-right fast" data-animation-out="slide-out-right fast" data-v-offset="0" aria-label="Merlin Web">
            <div class="close-bar">
                <button class="close-button" data-close aria-label="Close Merlin bird ID" type="button"><span class="symbol" aria-hidden="true">&times;</span> Close Merlin</button>
            </div>
        </section>

        <noscript><iframe 
            height="0" width="0" style="display:none;visibility:hidden" data-src="//www.googletagmanager.com/ns.html?id=GTM-P7854M" class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="></iframe></noscript>
        <link rel="stylesheet" href=https://lightbox.allaboutbirds.org/wp-content/plugins/clo-lightbox/clo-lightbox.min.css>
        <script type="text/javascript" src="https://lightbox.allaboutbirds.org/wp-content/plugins/clo-lightbox/clo-lightbox.js"></script>
        <script type="text/javascript">
                                            var clo_lightbox = new CLO_Lightbox();
                                            clo_lightbox.create('aab', 'aabnews', window.location.pathname, 'live');
        </script> <script>
            (function (body) {
                'use strict';
                body.className = body.className.replace(/\btribe-no-js\b/, 'tribe-js');
            })(document.body);
        </script>
        <script> /* <![CDATA[ */var tribe_l10n_datatables = {"aria": {"sort_ascending": ": activate to sort column ascending", "sort_descending": ": activate to sort column descending"}, "length_menu": "Show _MENU_ entries", "empty_table": "No data available in table", "info": "Showing _START_ to _END_ of _TOTAL_ entries", "info_empty": "Showing 0 to 0 of 0 entries", "info_filtered": "(filtered from _MAX_ total entries)", "zero_records": "No matching records found", "search": "Search:", "all_selected_text": "All items on this page were selected. ", "select_all_link": "Select all pages", "clear_selection": "Clear Selection.", "pagination": {"all": "All", "next": "Next", "previous": "Previous"}, "select": {"rows": {"0": "", "_": ": Selected %d rows", "1": ": Selected 1 row"}}, "datepicker": {"dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"], "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"], "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesShort": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"], "monthNamesMin": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], "nextText": "Next", "prevText": "Prev", "currentText": "Today", "closeText": "Done", "today": "Today", "clear": "Clear"}};/* ]]> */</script><style>.wp-block-gallery.wp-block-gallery-1{ --wp--style--unstable-gallery-gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) ); gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) )}</style>
        <style>.wp-block-gallery.wp-block-gallery-3{ --wp--style--unstable-gallery-gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) ); gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) )}</style>
        <style>.wp-block-gallery.wp-block-gallery-5{ --wp--style--unstable-gallery-gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) ); gap: var( --wp--style--gallery-gap-default, var( --gallery-block--gutter-size, var( --wp--style--block-gap, 0.5em ) ) )}</style>
        <style id='core-block-supports-inline-css' type='text/css'>
            .wp-block-buttons.wp-container-7{justify-content:center;}
        </style>

        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/plugins/disqus-comment-system/public/js/comment_embed.js?ver=3.0.22' id='disqus_embed-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/plugins/wp-smush-pro/app/assets/js/smush-lazy-load.min.js?ver=3.12.3' id='smush-lazy-load-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/scripts/foundation.min.js?ver=6.1.1' id='foundation-js-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/scripts/slick.min.js?ver=6.1.1' id='slick-js-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2/scripts/scripts.js?ver=1684242136' id='bp-site-js-js'></script>
        <script type='text/javascript' src='https://code.jquery.com/ui/1.12.1/jquery-ui.min.js' id='jquery-ui-js'></script>
        <script type='text/javascript' src='https://www.allaboutbirds.org/news/wp-content/themes/birdpress2-aab/scripts/scripts.js?ver=1684847008' id='bp-aab-site-js-js'></script>
        <script type='text/javascript' src='https://js.hscta.net/cta/current.js' id='hubspot-cta-js'></script>
    </body>
</html>
