<%-- 
    Document   : member_events
    Created on : Jun 4, 2023, 2:45:06 PM
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
    
		<title>Events | Birds, Cornell Lab of Ornithology</title>
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
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-P7854M');</script>
<!-- End Google Tag Manager --><!-- SEO meta tags powered by SmartCrawl https://wpmudev.com/project/smartcrawl-wordpress-seo/ -->
<link rel="canonical" href="https://www.birds.cornell.edu/home/visit/events/" />
<meta name="description" content="The Cornell Lab of Ornithology offers a variety of programs and events for visitors of all ages. Please see our events calendar (below) or call 1-800-843-BI ..." />
<script type="application/ld+json">{"@context":"https:\/\/schema.org","@graph":[{"@type":"Organization","@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization","url":"https:\/\/www.birds.cornell.edu\/home","name":"Birds, Cornell Lab of Ornithology"},{"@type":"WebSite","@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-website","url":"https:\/\/www.birds.cornell.edu\/home","name":"Birds, Cornell Lab of Ornithology","encoding":"UTF-8","potentialAction":{"@type":"SearchAction","target":"https:\/\/www.birds.cornell.edu\/home\/search\/{search_term_string}\/","query-input":"required name=search_term_string"}},{"@type":"Person","@id":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/#schema-author","name":"bce_admin_user","url":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/"},{"@type":"WebPage","@id":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/#schema-webpage","isPartOf":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-website"},"publisher":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization"},"url":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/"},{"@type":"Article","mainEntityOfPage":{"@id":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/#schema-webpage"},"author":{"@id":"https:\/\/www.birds.cornell.edu\/home\/author\/bce_admin_user\/#schema-author"},"publisher":{"@id":"https:\/\/www.birds.cornell.edu\/home\/#schema-publishing-organization"},"dateModified":"2023-03-09T08:18:44","datePublished":"2018-10-04T10:44:16","headline":"Events | Birds, Cornell Lab of Ornithology","description":"The Cornell Lab of Ornithology offers a variety of programs and events for visitors of all ages. Please see our events calendar (below) or call 1-800-843-BI ...","name":"Events","image":{"@type":"ImageObject","@id":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/#schema-article-image","url":"https:\/\/www.birds.cornell.edu\/home\/wp-content\/uploads\/2018\/11\/observatory.jpg","height":960,"width":1280},"thumbnailUrl":"https:\/\/www.birds.cornell.edu\/home\/wp-content\/uploads\/2018\/11\/observatory.jpg"}]}</script>
<!-- /SEO -->
<meta name="tec-api-version" content="v1"><meta name="tec-api-origin" content="https://www.birds.cornell.edu/home"><link rel="alternate" href="https://www.birds.cornell.edu/home/wp-json/tribe/events/v1/" />			<link rel="preload" href="https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/hustle-ui/fonts/hustle-icons-font.woff2" as="font" type="font/woff2" crossorigin>
				<script>
			document.documentElement.className = document.documentElement.className.replace( 'no-js', 'js' );
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

 <%@ include file="member_header.jsp" %> 

  <main id="main-content" class="page">
<article id="article" class="post-1248 page type-page status-publish has-post-thumbnail hentry">
            
  	
    <div class="content-container page-wide has-cta" data-sticky-container>
      
       
        <section id="content" class="content" aria-label="Main content">
          <link rel='stylesheet' id='tec-variables-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/variables-skeleton.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-common-skeleton-style-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/common-skeleton.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-bootstrap-datepicker-styles-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/vendor/bootstrap-datepicker/css/bootstrap-datepicker.standalone.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-tooltipster-css-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/vendor/tooltipster/tooltipster.bundle.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-skeleton.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-skeleton.min.css?ver=6.0.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='tec-variables-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/variables-full.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-common-full-style-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/common-full.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-full.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-full.min.css?ver=6.0.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-print-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-print.min.css?ver=6.0.5.1' type='text/css' media='print' />
<link rel='stylesheet' id='tribe-events-views-v2-print-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-print.min.css?ver=6.0.6.2' type='text/css' media='print' />









<div class="is-layout-flow wp-block-group alignfull has-bg-gray-background-color has-background narrow">
<h2 class="has-text-align-center has-large-font-size">Upcoming event:</h2>


<link rel='stylesheet' id='tec-variables-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/variables-skeleton.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-common-skeleton-style-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/common-skeleton.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-bootstrap-datepicker-styles-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/vendor/bootstrap-datepicker/css/bootstrap-datepicker.standalone.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-tooltipster-css-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/vendor/tooltipster/tooltipster.bundle.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-skeleton.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-skeleton.min.css?ver=6.0.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='tec-variables-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/variables-full.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-common-full-style-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/common-full.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-full.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-full.min.css?ver=6.0.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-print-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-print.min.css?ver=6.0.5.1' type='text/css' media='print' />
<link rel='stylesheet' id='tribe-events-views-v2-print-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-print.min.css?ver=6.0.6.2' type='text/css' media='print' />
<div
	 class="tribe-common tribe-events tribe-events-view tribe-events-view--list alignwide tribe-events-view--shortcode tribe-events-view--shortcode-0e2a3254" 	data-js="tribe-events-view"
	data-view-rest-nonce="6a47ab0393"
	data-view-rest-url="https://www.birds.cornell.edu/home/wp-json/tribe/views/v2/html"
	data-view-rest-method="POST"
	data-view-manage-url=""
			data-view-shortcode="0e2a3254"
				data-view-breakpoint-pointer="fda4f16f-e37f-4b14-8962-cbb5ead01572"
	>
	<div class="tribe-common-l-container tribe-events-l-container">
		<div
	class="tribe-events-view-loader tribe-common-a11y-hidden"
	role="alert"
	aria-live="polite"
>
	<span class="tribe-events-view-loader__text tribe-common-a11y-visual-hide">
		Loading view.	</span>
	<div class="tribe-events-view-loader__dots tribe-common-c-loader">
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--dot tribe-common-c-loader__dot tribe-common-c-loader__dot--first"  viewBox="0 0 15 15" xmlns="http://www.w3.org/2000/svg"><circle cx="7.5" cy="7.5" r="7.5"/></svg>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--dot tribe-common-c-loader__dot tribe-common-c-loader__dot--second"  viewBox="0 0 15 15" xmlns="http://www.w3.org/2000/svg"><circle cx="7.5" cy="7.5" r="7.5"/></svg>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--dot tribe-common-c-loader__dot tribe-common-c-loader__dot--third"  viewBox="0 0 15 15" xmlns="http://www.w3.org/2000/svg"><circle cx="7.5" cy="7.5" r="7.5"/></svg>
	</div>
</div>

		
		<script data-js="tribe-events-view-data" type="application/json">
	{"slug":"list","prev_url":"https:\/\/www.birds.cornell.edu\/home\/events\/list\/?pagename=visit&shortcode=0e2a3254&eventDisplay=past","next_url":"https:\/\/www.birds.cornell.edu\/home\/events\/list\/page\/2\/?shortcode=0e2a3254","view_class":"Tribe\\Events\\Views\\V2\\Views\\List_View","view_slug":"list","view_label":"List","title":"Visit Us | Birds, Cornell Lab of Ornithology","events":[10000630,10000631,10000679,10000678],"url":"https:\/\/www.birds.cornell.edu\/home\/events\/list\/?shortcode=0e2a3254","url_event_date":false,"bar":{"keyword":"","date":""},"today":"2023-05-27 00:00:00","now":"2023-05-27 09:41:48","rest_url":"https:\/\/www.birds.cornell.edu\/home\/wp-json\/tribe\/views\/v2\/html","rest_method":"POST","rest_nonce":"6a47ab0393","should_manage_url":false,"today_url":"https:\/\/www.birds.cornell.edu\/home\/events\/list\/?pagename=visit&shortcode=0e2a3254","today_title":"Click to select today's date","today_label":"Today","prev_label":"","next_label":"","date_formats":{"compact":"m\/d\/Y","month_and_year_compact":"m\/Y","month_and_year":"F Y","time_range_separator":"\u2013","date_time_separator":" at "},"messages":[],"start_of_week":"0","breadcrumbs":[],"before_events":"","after_events":"","display_events_bar":true,"disable_event_search":true,"live_refresh":false,"ical":{"display_link":true,"link":{"url":"https:\/\/www.birds.cornell.edu\/home\/events\/list\/?shortcode=0e2a3254&#038;ical=1","text":"Export Events","title":"Use this to share calendar data with Google Calendar, Apple iCal and other compatible apps"}},"container_classes":["tribe-common","tribe-events","tribe-events-view","tribe-events-view--list","alignwide","tribe-events-view--shortcode","tribe-events-view--shortcode-0e2a3254"],"container_data":{"shortcode":"0e2a3254"},"is_past":false,"breakpoints":{"xsmall":500,"medium":768,"full":960},"breakpoint_pointer":"fda4f16f-e37f-4b14-8962-cbb5ead01572","is_initial_load":true,"public_views":{"month":{"view_class":"Tribe\\Events\\Views\\V2\\Views\\Month_View","view_url":"https:\/\/www.birds.cornell.edu\/home\/events\/month\/?shortcode=0e2a3254","view_label":"Month"}},"show_latest_past":true,"show_now":true,"now_label":"Now","now_label_mobile":"Now","show_end":true,"selected_start_datetime":"2023-05-27","selected_start_date_mobile":"05\/27\/2023","selected_start_date_label":"May 27","selected_end_datetime":"2023-06-02","selected_end_date_mobile":"06\/02\/2023","selected_end_date_label":"June 2","datepicker_date":"05\/27\/2023","subscribe_links":{"gcal":{"block_slug":"hasGoogleCalendar","label":"Google Calendar","single_label":"Add to Google Calendar","visible":true},"ical":{"block_slug":"hasiCal","label":"iCalendar","single_label":"Add to iCalendar","visible":true},"outlook-365":{"block_slug":"hasOutlook365","label":"Outlook 365","single_label":"Outlook 365","visible":true},"outlook-live":{"block_slug":"hasOutlookLive","label":"Outlook Live","single_label":"Outlook Live","visible":true},"ics":{"label":"Export .ics file","single_label":"Export .ics file","visible":true,"block_slug":null},"outlook-ics":{"label":"Export Outlook .ics file","single_label":"Export Outlook .ics file","visible":true,"block_slug":null}},"display_recurring_toggle":false,"_context":{"slug":"list","should_manage_url":false},"text":"Loading...","classes":["tribe-common-c-loader__dot","tribe-common-c-loader__dot--third"]}</script>

		
		<header  class="tribe-events-header" >
						
			
			
			<div class="tribe-events-c-top-bar tribe-events-header__top-bar">

	<nav class="tribe-events-c-top-bar__nav tribe-common-a11y-hidden">
	<ul class="tribe-events-c-top-bar__nav-list">
		<li class="tribe-events-c-top-bar__nav-list-item">
	<a
		href="https://www.birds.cornell.edu/home/events/list/?pagename=visit&#038;shortcode=0e2a3254&#038;eventDisplay=past"
		class="tribe-common-c-btn-icon tribe-common-c-btn-icon--caret-left tribe-events-c-top-bar__nav-link tribe-events-c-top-bar__nav-link--prev"
		aria-label="Previous Events"
		title="Previous Events"
		data-js="tribe-events-view-link"
	>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-left tribe-common-c-btn-icon__icon-svg tribe-events-c-top-bar__nav-link-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M9.7 14.4l-1.5 1.5L.3 8 8.2.1l1.5 1.5L3.3 8l6.4 6.4z"/></svg>
	</a>
</li>

		<li class="tribe-events-c-top-bar__nav-list-item">
	<a
		href="https://www.birds.cornell.edu/home/events/list/page/2/?shortcode=0e2a3254"
		class="tribe-common-c-btn-icon tribe-common-c-btn-icon--caret-right tribe-events-c-top-bar__nav-link tribe-events-c-top-bar__nav-link--next"
		aria-label="Next Events"
		title="Next Events"
		data-js="tribe-events-view-link"
	>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-right tribe-common-c-btn-icon__icon-svg tribe-events-c-top-bar__nav-link-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M.3 1.6L1.8.1 9.7 8l-7.9 7.9-1.5-1.5L6.7 8 .3 1.6z"/></svg>
	</a>
</li>
	</ul>
</nav>

	<a
	href="https://www.birds.cornell.edu/home/events/list/?pagename=visit&#038;shortcode=0e2a3254"
	class="tribe-common-c-btn-border-small tribe-events-c-top-bar__today-button tribe-common-a11y-hidden"
	data-js="tribe-events-view-link"
	aria-label="Today"
	title="Today"
>
	Today</a>

	<div class="tribe-events-c-top-bar__datepicker">
	<button
		class="tribe-common-h3 tribe-common-h--alt tribe-events-c-top-bar__datepicker-button"
		data-js="tribe-events-top-bar-datepicker-button"
		type="button"
		aria-label="Click to toggle datepicker"
		title="Click to toggle datepicker"
	>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--month tribe-events-c-top-bar__datepicker-button-icon-svg"  viewBox="0 0 18 19" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 .991v17.04c0 .236.162.428.361.428h17.175c.2 0 .361-.192.361-.429V.991c0-.237-.162-.428-.361-.428H.36C.161.563 0 .754 0 .99zm.985.803H16.89v2.301H.985v-2.3zM16.89 5.223H.985v12H16.89v-12zM6.31 7.366v.857c0 .237.192.429.429.429h.857a.429.429 0 00.428-.429v-.857a.429.429 0 00-.428-.429H6.74a.429.429 0 00-.429.429zm3.429.857v-.857c0-.237.191-.429.428-.429h.857c.237 0 .429.192.429.429v.857a.429.429 0 01-.429.429h-.857a.429.429 0 01-.428-.429zm3.428-.857v.857c0 .237.192.429.429.429h.857a.429.429 0 00.428-.429v-.857a.429.429 0 00-.428-.429h-.857a.429.429 0 00-.429.429zm-6.857 4.286v-.858c0-.236.192-.428.429-.428h.857c.236 0 .428.192.428.428v.858a.429.429 0 01-.428.428H6.74a.429.429 0 01-.429-.428zm3.429-.858v.858c0 .236.191.428.428.428h.857a.429.429 0 00.429-.428v-.858a.429.429 0 00-.429-.428h-.857a.428.428 0 00-.428.428zm3.428.858v-.858c0-.236.192-.428.429-.428h.857c.236 0 .428.192.428.428v.858a.429.429 0 01-.428.428h-.857a.429.429 0 01-.429-.428zm-10.286-.858v.858c0 .236.192.428.429.428h.857a.429.429 0 00.429-.428v-.858a.429.429 0 00-.429-.428h-.857a.429.429 0 00-.429.428zm0 4.286v-.857c0-.237.192-.429.429-.429h.857c.237 0 .429.192.429.429v.857a.429.429 0 01-.429.429h-.857a.429.429 0 01-.429-.429zm3.429-.857v.857c0 .237.192.429.429.429h.857a.429.429 0 00.428-.429v-.857a.429.429 0 00-.428-.429H6.74a.429.429 0 00-.429.429zm3.429.857v-.857c0-.237.191-.429.428-.429h.857c.237 0 .429.192.429.429v.857a.429.429 0 01-.429.429h-.857a.429.429 0 01-.428-.429z" class="tribe-common-c-svgicon__svg-fill"/></svg>	</button>
    <span class="date-range">
		<time
			datetime="2023-05-27"
			class="tribe-events-c-top-bar__datepicker-time"
		>
							<span class="tribe-events-c-top-bar__datepicker-mobile">
					Now				</span>
				<span class="tribe-events-c-top-bar__datepicker-desktop tribe-common-a11y-hidden">
					Now				</span>
					</time>
					<span class="tribe-events-c-top-bar__datepicker-separator"> - </span>
			<time
				datetime="2023-06-02"
				class="tribe-events-c-top-bar__datepicker-time"
			>
				<span class="tribe-events-c-top-bar__datepicker-mobile">
					06/02/2023				</span>
				<span class="tribe-events-c-top-bar__datepicker-desktop tribe-common-a11y-hidden">
					June 2				</span>
			</time>
		    </span>
	<label
		class="tribe-events-c-top-bar__datepicker-label tribe-common-a11y-visual-hide"
		for="tribe-events-top-bar-date"
	>
		Select date.	</label>
	<input
		type="text"
		class="tribe-events-c-top-bar__datepicker-input tribe-common-a11y-visual-hide"
		data-js="tribe-events-top-bar-date"
		id="tribe-events-top-bar-date"
		name="tribe-events-views[tribe-bar-date]"
		value="05/27/2023"
		tabindex="-1"
		autocomplete="off"
		readonly="readonly"
	/>
	<div class="tribe-events-c-top-bar__datepicker-container" data-js="tribe-events-top-bar-datepicker-container"></div>
	<template class="tribe-events-c-top-bar__datepicker-template-prev-icon">
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-left tribe-events-c-top-bar__datepicker-nav-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M9.7 14.4l-1.5 1.5L.3 8 8.2.1l1.5 1.5L3.3 8l6.4 6.4z"/></svg>
	</template>
	<template class="tribe-events-c-top-bar__datepicker-template-next-icon">
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-right tribe-events-c-top-bar__datepicker-nav-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M.3 1.6L1.8.1 9.7 8l-7.9 7.9-1.5-1.5L6.7 8 .3 1.6z"/></svg>
	</template>
</div>

	<div class="tribe-events-c-top-bar__actions tribe-common-a11y-hidden">
	</div>

</div>
		</header>

		
		<div class="tribe-events-calendar-list">

							
				<h2 class="tribe-events-calendar-list__month-separator">
	<time
		class="tribe-events-calendar-list__month-separator-text tribe-common-h7 tribe-common-h6--min-medium tribe-common-h--alt"
		datetime="2023-05"
	>
		May 2023	</time>
</h2>

<div  class="tribe-common-g-row tribe-events-calendar-list__event-row" >
<div class="tribe-events-calendar-list__event-date-tag tribe-common-g-col">
<time class="tribe-events-calendar-list__event-date-tag-datetime" datetime="2023-05-27" aria-hidden="true">
<span class="tribe-events-calendar-list__event-date-tag-weekday">Sat</span>
<span class="tribe-events-calendar-list__event-date-tag-daynum tribe-common-h5 tribe-common-h4--min-medium">27</span>
</time>
</div>
    
<div class="tribe-events-calendar-list__event-wrapper tribe-common-g-col">
<article  class="tribe-events-calendar-list__event tribe-common-g-row tribe-common-g-row--gutters post-10000630 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >
<div class="tribe-events-calendar-list__event-details tribe-common-g-col">
<header class="tribe-events-calendar-list__event-header">
<div class="tribe-events-calendar-list__event-datetime-wrapper tribe-common-b2">
<time class="tribe-events-calendar-list__event-datetime" datetime="2023-05-27">
<span class="tribe-event-date-start">May 27 at 8:30 am</span>
–<span class="tribe-event-time">10:00 am</span>	
</time>
</div>
<h3 class="tribe-events-calendar-list__event-title tribe-common-h6 tribe-common-h4--min-medium">
<a href=""
title="Phu Quoc field trip - May 27"
rel="bookmark"
class="tribe-events-calendar-list__event-title-link tribe-common-anchor-thin">
Phu Quoc field trip - May 27</a>
</h3></header>
<div class="tribe-events-calendar-list__event-description tribe-common-b2 tribe-common-a11y-hidden">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></div>
</div></article></div></div>

<div  class="tribe-common-g-row tribe-events-calendar-list__event-row" >
<div class="tribe-events-calendar-list__event-date-tag tribe-common-g-col">
<time class="tribe-events-calendar-list__event-date-tag-datetime" datetime="2023-05-27" aria-hidden="true">
<span class="tribe-events-calendar-list__event-date-tag-weekday">Mon</span>
<span class="tribe-events-calendar-list__event-date-tag-daynum tribe-common-h5 tribe-common-h4--min-medium">29</span>
</time>
</div>
    
<div class="tribe-events-calendar-list__event-wrapper tribe-common-g-col">
<article  class="tribe-events-calendar-list__event tribe-common-g-row tribe-common-g-row--gutters post-10000630 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >
<div class="tribe-events-calendar-list__event-details tribe-common-g-col">
<header class="tribe-events-calendar-list__event-header">
<div class="tribe-events-calendar-list__event-datetime-wrapper tribe-common-b2">
<time class="tribe-events-calendar-list__event-datetime" datetime="2023-05-27">
<span class="tribe-event-date-start">May 29 at 8:30 am</span>
–<span class="tribe-event-time">10:00 am</span>	
</time>
</div>
<h3 class="tribe-events-calendar-list__event-title tribe-common-h6 tribe-common-h4--min-medium">
<a href=""
title="Community meeting"
rel="bookmark"
class="tribe-events-calendar-list__event-title-link tribe-common-anchor-thin">
Community meeting - May 29</a>
</h3></header>
<div class="tribe-events-calendar-list__event-description tribe-common-b2 tribe-common-a11y-hidden">
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></div>
</div></article></div></div>							
				
<h2 class="tribe-events-calendar-list__month-separator">
<time
class="tribe-events-calendar-list__month-separator-text tribe-common-h7 tribe-common-h6--min-medium tribe-common-h--alt"
datetime="2023-06">June 2023</time>
</h2>
<div  class="tribe-common-g-row tribe-events-calendar-list__event-row" >
<div class="tribe-events-calendar-list__event-date-tag tribe-common-g-col">
<time class="tribe-events-calendar-list__event-date-tag-datetime" datetime="2023-06-02" aria-hidden="true">
<span class="tribe-events-calendar-list__event-date-tag-weekday">Fri</span>
<span class="tribe-events-calendar-list__event-date-tag-daynum tribe-common-h5 tribe-common-h4--min-medium">2</time>
</div>
<div class="tribe-events-calendar-list__event-wrapper tribe-common-g-col">
<article  class="tribe-events-calendar-list__event tribe-common-g-row tribe-common-g-row--gutters post-10000678 tribe_events type-tribe_events status-publish hentry" >
<div class="tribe-events-calendar-list__event-details tribe-common-g-col">
<header class="tribe-events-calendar-list__event-header">
<div class="tribe-events-calendar-list__event-datetime-wrapper tribe-common-b2">
<time class="tribe-events-calendar-list__event-datetime" datetime="2023-06-02">
<span class="tribe-event-date-start">June 2 at 4:00 pm</span>–<span class="tribe-event-time">5:00 pm</span>	</time>
</div><h3 class="tribe-events-calendar-list__event-title tribe-common-h6 tribe-common-h4--min-medium">
<a
href=""
title="FINAL"
rel="bookmark"
class="tribe-events-calendar-list__event-title-link tribe-common-anchor-thin"
>Tournament final</a>
</h3>
</header>
<div class="tribe-events-calendar-list__event-description tribe-common-b2 tribe-common-a11y-hidden">
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></div></div></article></div></div>
                    
                    
</div>
</div>
</div>

<script class="tribe-events-breakpoints">
	( function () {
		var completed = false;

		function initBreakpoints() {
			if ( completed ) {
				// This was fired already and completed no need to attach to the event listener.
				document.removeEventListener( 'DOMContentLoaded', initBreakpoints );
				return;
			}

			if ( 'undefined' === typeof window.tribe ) {
				return;
			}

			if ( 'undefined' === typeof window.tribe.events ) {
				return;
			}

			if ( 'undefined' === typeof window.tribe.events.views ) {
				return;
			}

			if ( 'undefined' === typeof window.tribe.events.views.breakpoints ) {
				return;
			}

			if ( 'function' !== typeof (window.tribe.events.views.breakpoints.setup) ) {
				return;
			}

			var container = document.querySelectorAll( '[data-view-breakpoint-pointer="fda4f16f-e37f-4b14-8962-cbb5ead01572"]' );
			if ( ! container ) {
				return;
			}

			window.tribe.events.views.breakpoints.setup( container );
			completed = true;
			// This was fired already and completed no need to attach to the event listener.
			document.removeEventListener( 'DOMContentLoaded', initBreakpoints );
		}

		// Try to init the breakpoints right away.
		initBreakpoints();
		document.addEventListener( 'DOMContentLoaded', initBreakpoints );
	})();
</script>

</div>















<h2>Events this month</h2>


<link rel='stylesheet' id='tec-variables-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/variables-skeleton.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-common-skeleton-style-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/common-skeleton.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-bootstrap-datepicker-styles-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/vendor/bootstrap-datepicker/css/bootstrap-datepicker.standalone.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-tooltipster-css-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/vendor/tooltipster/tooltipster.bundle.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-skeleton.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-skeleton-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-skeleton.min.css?ver=6.0.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='tec-variables-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/variables-full.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-common-full-style-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/css/common-full.min.css?ver=5.0.6' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-views-v2-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-full.min.css?ver=6.0.6.2' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-full-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-full.min.css?ver=6.0.5.1' type='text/css' media='all' />
<link rel='stylesheet' id='tribe-events-pro-views-v2-print-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/events-calendar-pro/src/resources/css/views-print.min.css?ver=6.0.5.1' type='text/css' media='print' />
<link rel='stylesheet' id='tribe-events-views-v2-print-css' href='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/css/views-print.min.css?ver=6.0.6.2' type='text/css' media='print' />
<div
	 class="tribe-common tribe-events tribe-events-view tribe-events-view--month alignwide tribe-events-view--shortcode tribe-events-view--shortcode-e0d78de6" 	data-js="tribe-events-view"
	data-view-rest-nonce="71474a4c1c"
	data-view-rest-url="https://www.birds.cornell.edu/home/wp-json/tribe/views/v2/html"
	data-view-rest-method="POST"
	data-view-manage-url=""
			data-view-shortcode="e0d78de6"
				data-view-breakpoint-pointer="99d6f96e-78b8-4903-ac59-ae6681bcc433"
	>
	<div class="tribe-common-l-container tribe-events-l-container">
		<div
	class="tribe-events-view-loader tribe-common-a11y-hidden"
	role="alert"
	aria-live="polite"
>
	<span class="tribe-events-view-loader__text tribe-common-a11y-visual-hide">
		Loading view.	</span>
	<div class="tribe-events-view-loader__dots tribe-common-c-loader">
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--dot tribe-common-c-loader__dot tribe-common-c-loader__dot--first"  viewBox="0 0 15 15" xmlns="http://www.w3.org/2000/svg"><circle cx="7.5" cy="7.5" r="7.5"/></svg>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--dot tribe-common-c-loader__dot tribe-common-c-loader__dot--second"  viewBox="0 0 15 15" xmlns="http://www.w3.org/2000/svg"><circle cx="7.5" cy="7.5" r="7.5"/></svg>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--dot tribe-common-c-loader__dot tribe-common-c-loader__dot--third"  viewBox="0 0 15 15" xmlns="http://www.w3.org/2000/svg"><circle cx="7.5" cy="7.5" r="7.5"/></svg>
	</div>
</div>

		<script type="application/ld+json">
[{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we look and&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-04-30/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-04-30/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-04-30T08:30:00-04:00","endDate":"2023-04-30T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Guided Tour","description":"&lt;p&gt;Guided tours offer visitors an overview of the history of the Cornell Lab. Admire the exhibits and world-class art in the Visitor Center; view specimens from the\u00a0Cornell University Museum of&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/guided-tour-18/&quot; title=&quot;ReadGuided Tour&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/guided-tour-18/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-04-30T11:00:00-04:00","endDate":"2023-04-30T12:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Webinar: How to Use BirdCast to Enjoy Spring Migration","description":"&lt;p&gt;On &lt;strong&gt;May 1 at 12 p.m. ET&lt;/strong&gt;, join the BirdCast team for a discussion about spring migration, and how you can protect migrating birds through programs such as Lights Out.&lt;/p&gt;\\n","image":"https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2.jpg","url":"https://www.birds.cornell.edu/home/event/webinar-how-to-use-birdcast-to-enjoy-spring-migration/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-01T12:00:00-04:00","endDate":"2023-05-01T13:00:00-04:00","performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Saturday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we look and&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walks/2023-05-06/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walks/2023-05-06/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-06T08:30:00-04:00","endDate":"2023-05-06T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we look and&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-05-07/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-05-07/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-07T08:30:00-04:00","endDate":"2023-05-07T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Nests and Eggs: An Up-Close Look","description":"&lt;p&gt;Discover the world of nesting birds with staff from the Cornell Lab\u2019s NestWatch program. Registration required. &lt;/p&gt;\\n","image":"https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize.jpg","url":"https://www.birds.cornell.edu/home/event/nests-and-eggs-an-up-close-look/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-11T10:00:00-04:00","endDate":"2023-05-11T11:30:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"offers":{"@type":"Offer","price":"0","priceCurrency":"USD","url":"https://www.birds.cornell.edu/home/event/nests-and-eggs-an-up-close-look/","category":"primary","availability":"inStock","validFrom":"2023-03-29T00:00:00+00:00"},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Family Story Time","description":"&lt;p&gt;Join us for readings of bird-themed books from the library\u2019s children\u2019s collection. We\u2019ll meet in the Visitor Center and then, if the weather allows, we\u2019ll go outside to enjoy stories&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/family-story-time-2/&quot; title=&quot;ReadFamily Story Time&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/family-story-time-2/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-12T10:30:00-04:00","endDate":"2023-05-12T11:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-13/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-13/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-13T08:30:00-04:00","endDate":"2023-05-13T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-14/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-14/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-14T08:30:00-04:00","endDate":"2023-05-14T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Binocular Demo","description":"&lt;p&gt;Join Living Bird editor Marc Devokaitis for a chance to tryout more than a dozen pairs of 8x32 new, compact binoculars, and give your opinions for an upcoming review that&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-18/&quot; title=&quot;ReadBinocular Demo&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-18/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-18T13:00:00-04:00","endDate":"2023-05-18T14:30:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Binocular Demo","description":"&lt;p&gt;Join Living Bird editor Marc Devokaitis for a chance to tryout more than a dozen pairs of 8x32 new, compact binoculars, and give your opinions for an upcoming review that&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-19/&quot; title=&quot;ReadBinocular Demo&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-19/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-19T13:00:00-04:00","endDate":"2023-05-19T14:30:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-20/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-20/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-20T08:30:00-04:00","endDate":"2023-05-20T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-21/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-21/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-21T08:30:00-04:00","endDate":"2023-05-21T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-27/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-27/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-27T08:30:00-04:00","endDate":"2023-05-27T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-28/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-28/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-28T08:30:00-04:00","endDate":"2023-05-28T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Webinar &#8211; Black Birders Week: Avian Art Hour","description":"&lt;p&gt;On &lt;strong&gt;Tues., May 30 at 12 p.m. Eastern&lt;/strong&gt;, grab your drawing supplies to follow along with artist Emma Brittain-Hardy as she shows us the basics of drawing birds.&lt;/p&gt;\\n","image":"https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-scaled.jpg","url":"https://www.birds.cornell.edu/home/event/webinar-black-birders-week-avian-art-hour/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-05-30T12:00:00-04:00","endDate":"2023-05-30T13:00:00-04:00","performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Closing Early","description":"&lt;p&gt;The Visitor Center will be closing one hour early, at 4 p.m. We apologize for the inconvenience.&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/closing-early/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-06-02T16:00:00-04:00","endDate":"2023-06-02T17:00:00-04:00","performer":"Organization"},{"@context":"http://schema.org","@type":"Event","name":"Beginner Bird Walk","description":"&lt;p&gt;Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we&lt;a class=&quot;excerpt-read-more&quot; href=&quot;https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-06-03/&quot; title=&quot;ReadBeginner Bird Walk&quot;&gt;... Read more &raquo;&lt;/a&gt;&lt;/p&gt;\\n","url":"https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-06-03/","eventAttendanceMode":"https://schema.org/OfflineEventAttendanceMode","startDate":"2023-06-03T08:30:00-04:00","endDate":"2023-06-03T10:00:00-04:00","location":{"@type":"Place","name":"Cornell Lab of Ornithology","description":"","url":"https://www.birds.cornell.edu/home/venue/cornell-lab-of-ornithology/","address":{"@type":"PostalAddress","streetAddress":"159 Sapsucker Woods Road","addressLocality":"Ithaca","addressRegion":"NY","postalCode":"14850","addressCountry":"United States"},"telephone":"","sameAs":""},"performer":"Organization"}]
</script>
		<script data-js="tribe-events-view-data" type="application/json">
	{"slug":"month","prev_url":"https:\/\/www.birds.cornell.edu\/home\/events\/month\/2023-04\/?shortcode=e0d78de6","next_url":"https:\/\/www.birds.cornell.edu\/home\/events\/month\/2023-06\/?shortcode=e0d78de6","view_class":"Tribe\\Events\\Views\\V2\\Views\\Month_View","view_slug":"month","view_label":"Month","title":"Events | Birds, Cornell Lab of Ornithology","events":{"2023-04-30":[10000513,10000673],"2023-05-01":[10000666],"2023-05-02":[],"2023-05-03":[],"2023-05-04":[],"2023-05-05":[],"2023-05-06":[10000496],"2023-05-07":[10000514],"2023-05-08":[],"2023-05-09":[],"2023-05-10":[],"2023-05-11":[10000663],"2023-05-12":[10000672],"2023-05-13":[10000626],"2023-05-14":[10000627],"2023-05-15":[],"2023-05-16":[],"2023-05-17":[],"2023-05-18":[10000676],"2023-05-19":[10000675],"2023-05-20":[10000628],"2023-05-21":[10000629],"2023-05-22":[],"2023-05-23":[],"2023-05-24":[],"2023-05-25":[],"2023-05-26":[],"2023-05-27":[10000630],"2023-05-28":[10000631],"2023-05-29":[],"2023-05-30":[10000679],"2023-05-31":[],"2023-06-01":[],"2023-06-02":[10000678],"2023-06-03":[10000632]},"url":"https:\/\/www.birds.cornell.edu\/home\/events\/month\/?shortcode=e0d78de6","url_event_date":false,"bar":{"keyword":"","date":""},"today":"2023-05-27 00:00:00","now":"2023-05-27 00:07:21","rest_url":"https:\/\/www.birds.cornell.edu\/home\/wp-json\/tribe\/views\/v2\/html","rest_method":"POST","rest_nonce":"71474a4c1c","should_manage_url":false,"today_url":"https:\/\/www.birds.cornell.edu\/home\/events\/month\/?pagename=visit%2Fevents&shortcode=e0d78de6","today_title":"Click to select the current month","today_label":"This Month","prev_label":"Apr","next_label":"Jun","date_formats":{"compact":"m\/d\/Y","month_and_year_compact":"m\/Y","month_and_year":"F Y","time_range_separator":"\u2013","date_time_separator":" at "},"messages":[],"start_of_week":"0","breadcrumbs":[],"before_events":"","after_events":"","display_events_bar":true,"disable_event_search":true,"live_refresh":false,"ical":{"display_link":true,"link":{"url":"https:\/\/www.birds.cornell.edu\/home\/events\/month\/?shortcode=e0d78de6&#038;ical=1","text":"Export Events","title":"Use this to share calendar data with Google Calendar, Apple iCal and other compatible apps"}},"container_classes":["tribe-common","tribe-events","tribe-events-view","tribe-events-view--month","alignwide","tribe-events-view--shortcode","tribe-events-view--shortcode-e0d78de6"],"container_data":{"shortcode":"e0d78de6"},"is_past":false,"breakpoints":{"xsmall":500,"medium":768,"full":960},"breakpoint_pointer":"99d6f96e-78b8-4903-ac59-ae6681bcc433","is_initial_load":true,"public_views":{"month":{"view_class":"Tribe\\Events\\Views\\V2\\Views\\Month_View","view_url":"https:\/\/www.birds.cornell.edu\/home\/events\/month\/?shortcode=e0d78de6","view_label":"Month"}},"show_latest_past":true,"today_date":"2023-05-27","grid_date":"2023-05-27","formatted_grid_date":"May 2023","formatted_grid_date_mobile":"05\/27\/2023","days":{"2023-04-30":{"date":"2023-04-30","is_start_of_week":true,"year_number":"2023","month_number":"04","day_number":"30","events":[10000513,10000673],"featured_events":[],"multiday_events":[],"found_events":2,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-04-30\/?shortcode=e0d78de6"},"2023-05-01":{"date":"2023-05-01","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"1","events":[10000666],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-01\/?shortcode=e0d78de6"},"2023-05-02":{"date":"2023-05-02","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"2","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-02\/?shortcode=e0d78de6"},"2023-05-03":{"date":"2023-05-03","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"3","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-03\/?shortcode=e0d78de6"},"2023-05-04":{"date":"2023-05-04","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"4","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-04\/?shortcode=e0d78de6"},"2023-05-05":{"date":"2023-05-05","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"5","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-05\/?shortcode=e0d78de6"},"2023-05-06":{"date":"2023-05-06","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"6","events":[10000496],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-06\/?shortcode=e0d78de6"},"2023-05-07":{"date":"2023-05-07","is_start_of_week":true,"year_number":"2023","month_number":"05","day_number":"7","events":[10000514],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-07\/?shortcode=e0d78de6"},"2023-05-08":{"date":"2023-05-08","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"8","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-08\/?shortcode=e0d78de6"},"2023-05-09":{"date":"2023-05-09","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"9","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-09\/?shortcode=e0d78de6"},"2023-05-10":{"date":"2023-05-10","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"10","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-10\/?shortcode=e0d78de6"},"2023-05-11":{"date":"2023-05-11","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"11","events":[10000663],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-11\/?shortcode=e0d78de6"},"2023-05-12":{"date":"2023-05-12","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"12","events":[10000672],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-12\/?shortcode=e0d78de6"},"2023-05-13":{"date":"2023-05-13","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"13","events":[10000626],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-13\/?shortcode=e0d78de6"},"2023-05-14":{"date":"2023-05-14","is_start_of_week":true,"year_number":"2023","month_number":"05","day_number":"14","events":[10000627],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-14\/?shortcode=e0d78de6"},"2023-05-15":{"date":"2023-05-15","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"15","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-15\/?shortcode=e0d78de6"},"2023-05-16":{"date":"2023-05-16","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"16","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-16\/?shortcode=e0d78de6"},"2023-05-17":{"date":"2023-05-17","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"17","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-17\/?shortcode=e0d78de6"},"2023-05-18":{"date":"2023-05-18","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"18","events":[10000676],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-18\/?shortcode=e0d78de6"},"2023-05-19":{"date":"2023-05-19","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"19","events":[10000675],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-19\/?shortcode=e0d78de6"},"2023-05-20":{"date":"2023-05-20","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"20","events":[10000628],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-20\/?shortcode=e0d78de6"},"2023-05-21":{"date":"2023-05-21","is_start_of_week":true,"year_number":"2023","month_number":"05","day_number":"21","events":[10000629],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-21\/?shortcode=e0d78de6"},"2023-05-22":{"date":"2023-05-22","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"22","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-22\/?shortcode=e0d78de6"},"2023-05-23":{"date":"2023-05-23","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"23","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-23\/?shortcode=e0d78de6"},"2023-05-24":{"date":"2023-05-24","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"24","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-24\/?shortcode=e0d78de6"},"2023-05-25":{"date":"2023-05-25","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"25","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-25\/?shortcode=e0d78de6"},"2023-05-26":{"date":"2023-05-26","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"26","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-26\/?shortcode=e0d78de6"},"2023-05-27":{"date":"2023-05-27","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"27","events":[10000630],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-27\/?shortcode=e0d78de6"},"2023-05-28":{"date":"2023-05-28","is_start_of_week":true,"year_number":"2023","month_number":"05","day_number":"28","events":[10000631],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-28\/?shortcode=e0d78de6"},"2023-05-29":{"date":"2023-05-29","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"29","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-29\/?shortcode=e0d78de6"},"2023-05-30":{"date":"2023-05-30","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"30","events":[10000679],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-30\/?shortcode=e0d78de6"},"2023-05-31":{"date":"2023-05-31","is_start_of_week":false,"year_number":"2023","month_number":"05","day_number":"31","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-05-31\/?shortcode=e0d78de6"},"2023-06-01":{"date":"2023-06-01","is_start_of_week":false,"year_number":"2023","month_number":"06","day_number":"1","events":[],"featured_events":[],"multiday_events":[],"found_events":0,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-06-01\/?shortcode=e0d78de6"},"2023-06-02":{"date":"2023-06-02","is_start_of_week":false,"year_number":"2023","month_number":"06","day_number":"2","events":[10000678],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-06-02\/?shortcode=e0d78de6"},"2023-06-03":{"date":"2023-06-03","is_start_of_week":false,"year_number":"2023","month_number":"06","day_number":"3","events":[10000632],"featured_events":[],"multiday_events":[],"found_events":1,"more_events":0,"day_url":"https:\/\/www.birds.cornell.edu\/home\/events\/2023-06-03\/?shortcode=e0d78de6"}},"next_month":"6","prev_month":"4","next_rel":"next","prev_rel":"prev","mobile_messages":{"notice":{"no-events-in-day":"There are no events on this day."}},"grid_start_date":"2023-04-30","subscribe_links":{"gcal":{"block_slug":"hasGoogleCalendar","label":"Google Calendar","single_label":"Add to Google Calendar","visible":true},"ical":{"block_slug":"hasiCal","label":"iCalendar","single_label":"Add to iCalendar","visible":true},"outlook-365":{"block_slug":"hasOutlook365","label":"Outlook 365","single_label":"Outlook 365","visible":true},"outlook-live":{"block_slug":"hasOutlookLive","label":"Outlook Live","single_label":"Outlook Live","visible":true},"ics":{"label":"Export .ics file","single_label":"Export .ics file","visible":true,"block_slug":null},"outlook-ics":{"label":"Export Outlook .ics file","single_label":"Export Outlook .ics file","visible":true,"block_slug":null}},"display_recurring_toggle":false,"_context":{"slug":"month","should_manage_url":false},"text":"Loading...","classes":["tribe-common-c-loader__dot","tribe-common-c-loader__dot--third"]}</script>

		
		<header  class="tribe-events-header" >
			
			
			
			<div class="tribe-events-c-top-bar tribe-events-header__top-bar">

	<nav class="tribe-events-c-top-bar__nav tribe-common-a11y-hidden">
	<ul class="tribe-events-c-top-bar__nav-list">
		<li class="tribe-events-c-top-bar__nav-list-item">
	<a
		href="https://www.birds.cornell.edu/home/events/month/2023-04/?shortcode=e0d78de6"
		class="tribe-common-c-btn-icon tribe-common-c-btn-icon--caret-left tribe-events-c-top-bar__nav-link tribe-events-c-top-bar__nav-link--prev"
		aria-label="Previous month"
		title="Previous month"
		data-js="tribe-events-view-link"
		rel="prev"
	>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-left tribe-common-c-btn-icon__icon-svg tribe-events-c-top-bar__nav-link-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M9.7 14.4l-1.5 1.5L.3 8 8.2.1l1.5 1.5L3.3 8l6.4 6.4z"/></svg>
	</a>
</li>

		<li class="tribe-events-c-top-bar__nav-list-item">
	<a
		href="https://www.birds.cornell.edu/home/events/month/2023-06/?shortcode=e0d78de6"
		class="tribe-common-c-btn-icon tribe-common-c-btn-icon--caret-right tribe-events-c-top-bar__nav-link tribe-events-c-top-bar__nav-link--next"
		aria-label="Next month"
		title="Next month"
		data-js="tribe-events-view-link"
		rel="next"
	>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-right tribe-common-c-btn-icon__icon-svg tribe-events-c-top-bar__nav-link-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M.3 1.6L1.8.1 9.7 8l-7.9 7.9-1.5-1.5L6.7 8 .3 1.6z"/></svg>
	</a>
</li>
	</ul>
</nav>

	<a
	href="https://www.birds.cornell.edu/home/events/month/?pagename=visit%2Fevents&#038;shortcode=e0d78de6"
	class="tribe-common-c-btn-border-small tribe-events-c-top-bar__today-button tribe-common-a11y-hidden"
	data-js="tribe-events-view-link"
	aria-label="This Month"
	title="This Month"
>
	This Month</a>

	<div class="tribe-events-c-top-bar__datepicker">
	<button
		class="tribe-common-h3 tribe-common-h--alt tribe-events-c-top-bar__datepicker-button"
		data-js="tribe-events-top-bar-datepicker-button"
		type="button"
		aria-label="Click to toggle datepicker"
		title="Click to toggle datepicker"
	>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--month tribe-events-c-top-bar__datepicker-button-icon-svg"  viewBox="0 0 18 19" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 .991v17.04c0 .236.162.428.361.428h17.175c.2 0 .361-.192.361-.429V.991c0-.237-.162-.428-.361-.428H.36C.161.563 0 .754 0 .99zm.985.803H16.89v2.301H.985v-2.3zM16.89 5.223H.985v12H16.89v-12zM6.31 7.366v.857c0 .237.192.429.429.429h.857a.429.429 0 00.428-.429v-.857a.429.429 0 00-.428-.429H6.74a.429.429 0 00-.429.429zm3.429.857v-.857c0-.237.191-.429.428-.429h.857c.237 0 .429.192.429.429v.857a.429.429 0 01-.429.429h-.857a.429.429 0 01-.428-.429zm3.428-.857v.857c0 .237.192.429.429.429h.857a.429.429 0 00.428-.429v-.857a.429.429 0 00-.428-.429h-.857a.429.429 0 00-.429.429zm-6.857 4.286v-.858c0-.236.192-.428.429-.428h.857c.236 0 .428.192.428.428v.858a.429.429 0 01-.428.428H6.74a.429.429 0 01-.429-.428zm3.429-.858v.858c0 .236.191.428.428.428h.857a.429.429 0 00.429-.428v-.858a.429.429 0 00-.429-.428h-.857a.428.428 0 00-.428.428zm3.428.858v-.858c0-.236.192-.428.429-.428h.857c.236 0 .428.192.428.428v.858a.429.429 0 01-.428.428h-.857a.429.429 0 01-.429-.428zm-10.286-.858v.858c0 .236.192.428.429.428h.857a.429.429 0 00.429-.428v-.858a.429.429 0 00-.429-.428h-.857a.429.429 0 00-.429.428zm0 4.286v-.857c0-.237.192-.429.429-.429h.857c.237 0 .429.192.429.429v.857a.429.429 0 01-.429.429h-.857a.429.429 0 01-.429-.429zm3.429-.857v.857c0 .237.192.429.429.429h.857a.429.429 0 00.428-.429v-.857a.429.429 0 00-.428-.429H6.74a.429.429 0 00-.429.429zm3.429.857v-.857c0-.237.191-.429.428-.429h.857c.237 0 .429.192.429.429v.857a.429.429 0 01-.429.429h-.857a.429.429 0 01-.428-.429z" class="tribe-common-c-svgicon__svg-fill"/></svg>	</button>
    <span class="date-range">
    <time
			datetime="2023-05"
			class="tribe-events-c-top-bar__datepicker-time"
		>
			<span class="tribe-events-c-top-bar__datepicker-mobile">
				05/27/2023			</span>
			<span class="tribe-events-c-top-bar__datepicker-desktop tribe-common-a11y-hidden">
				May 2023			</span>
		</time>
  </span>
	<label
		class="tribe-events-c-top-bar__datepicker-label tribe-common-a11y-visual-hide"
		for="tribe-events-top-bar-date"
	>
		Select date.	</label>
	<input
		type="text"
		class="tribe-events-c-top-bar__datepicker-input tribe-common-a11y-visual-hide"
		data-js="tribe-events-top-bar-date"
		id="tribe-events-top-bar-date"
		name="tribe-events-views[tribe-bar-date]"
		value="05/27/2023"
		tabindex="-1"
		autocomplete="off"
		readonly="readonly"
	/>
	<div class="tribe-events-c-top-bar__datepicker-container" data-js="tribe-events-top-bar-datepicker-container"></div>
	<template class="tribe-events-c-top-bar__datepicker-template-prev-icon">
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-left tribe-events-c-top-bar__datepicker-nav-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M9.7 14.4l-1.5 1.5L.3 8 8.2.1l1.5 1.5L3.3 8l6.4 6.4z"/></svg>
	</template>
	<template class="tribe-events-c-top-bar__datepicker-template-next-icon">
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-right tribe-events-c-top-bar__datepicker-nav-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M.3 1.6L1.8.1 9.7 8l-7.9 7.9-1.5-1.5L6.7 8 .3 1.6z"/></svg>
	</template>
</div>

	<div class="tribe-events-c-top-bar__actions tribe-common-a11y-hidden">
	</div>

</div>
		</header>

		
		<div
			class="tribe-events-calendar-month"
			role="grid"
			aria-labelledby="tribe-events-calendar-header"
			aria-readonly="true"
			data-js="tribe-events-month-grid"
		>

			<header class="tribe-events-calendar-month__header" role="rowgroup">

	<h2 class="tribe-common-a11y-visual-hide" id="tribe-events-calendar-header">
		Calendar of Events	</h2>

	<div role="row" class="tribe-events-calendar-month__header-row">
					<div
				class="tribe-events-calendar-month__header-column"
				role="columnheader"
				aria-label="Sunday"
			>
				<span class="tribe-events-calendar-month__header-column-title tribe-common-b3">
					<span class="tribe-events-calendar-month__header-column-title-mobile">
						S					</span>
					<span class="tribe-events-calendar-month__header-column-title-desktop tribe-common-a11y-hidden">
						Sun					</span>
        </span>
			</div>
					<div
				class="tribe-events-calendar-month__header-column"
				role="columnheader"
				aria-label="Monday"
			>
				<span class="tribe-events-calendar-month__header-column-title tribe-common-b3">
					<span class="tribe-events-calendar-month__header-column-title-mobile">
						M					</span>
					<span class="tribe-events-calendar-month__header-column-title-desktop tribe-common-a11y-hidden">
						Mon					</span>
        </span>
			</div>
					<div
				class="tribe-events-calendar-month__header-column"
				role="columnheader"
				aria-label="Tuesday"
			>
				<span class="tribe-events-calendar-month__header-column-title tribe-common-b3">
					<span class="tribe-events-calendar-month__header-column-title-mobile">
						T					</span>
					<span class="tribe-events-calendar-month__header-column-title-desktop tribe-common-a11y-hidden">
						Tue					</span>
        </span>
			</div>
					<div
				class="tribe-events-calendar-month__header-column"
				role="columnheader"
				aria-label="Wednesday"
			>
				<span class="tribe-events-calendar-month__header-column-title tribe-common-b3">
					<span class="tribe-events-calendar-month__header-column-title-mobile">
						W					</span>
					<span class="tribe-events-calendar-month__header-column-title-desktop tribe-common-a11y-hidden">
						Wed					</span>
        </span>
			</div>
					<div
				class="tribe-events-calendar-month__header-column"
				role="columnheader"
				aria-label="Thursday"
			>
				<span class="tribe-events-calendar-month__header-column-title tribe-common-b3">
					<span class="tribe-events-calendar-month__header-column-title-mobile">
						T					</span>
					<span class="tribe-events-calendar-month__header-column-title-desktop tribe-common-a11y-hidden">
						Thu					</span>
        </span>
			</div>
					<div
				class="tribe-events-calendar-month__header-column"
				role="columnheader"
				aria-label="Friday"
			>
				<span class="tribe-events-calendar-month__header-column-title tribe-common-b3">
					<span class="tribe-events-calendar-month__header-column-title-mobile">
						F					</span>
					<span class="tribe-events-calendar-month__header-column-title-desktop tribe-common-a11y-hidden">
						Fri					</span>
        </span>
			</div>
					<div
				class="tribe-events-calendar-month__header-column"
				role="columnheader"
				aria-label="Saturday"
			>
				<span class="tribe-events-calendar-month__header-column-title tribe-common-b3">
					<span class="tribe-events-calendar-month__header-column-title-mobile">
						S					</span>
					<span class="tribe-events-calendar-month__header-column-title-desktop tribe-common-a11y-hidden">
						Sat					</span>
        </span>
			</div>
			</div>
</header>

			
<div class="tribe-events-calendar-month__body" role="rowgroup">

	
		<div class="tribe-events-calendar-month__week" role="row" data-js="tribe-events-month-grid-row">

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past tribe-events-calendar-month__day--other-month tribe-events-calendar-month__day--past-month" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-04-30"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-04-30"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			2 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-04-30"
		>
			30		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-04-30"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		2 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-04-30"
	>
		    30
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000513 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-04-30/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000513"
		aria-describedby="tribe-events-tooltip-content-10000513"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000513"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-04-30">
		<span class="tribe-event-date-start">April 30 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-3/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-04-30/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we look and<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-04-30/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000673 tribe_events type-tribe_events status-publish hentry tribe_events_cat-behind-the-scenes-tours cat_behind-the-scenes-tours" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="11:00">
		11:00 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="12:00">
			12:00 pm		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/guided-tour-18/"
		title="Guided Tour"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000673"
		aria-describedby="tribe-events-tooltip-content-10000673"
	>
		Guided Tour	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000673"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-04-30">
		<span class="tribe-event-date-start">April 30 at 11:00 am</span>–<span class="tribe-event-time">12:00 pm</span>	</time>
	</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/guided-tour-18/"
		title="Guided Tour"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Guided Tour	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Guided tours offer visitors an overview of the history of the Cornell Lab. Admire the exhibits and world-class art in the Visitor Center; view specimens from the Cornell University Museum of<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/guided-tour-18/" title="ReadGuided Tour">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-01"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-1"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-01"
		>
			1		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-01"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-01"
	>
		    1
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000666 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-virtual-program cat_virtual-program" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="12:00">
		12:00 pm	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="13:00">
			1:00 pm		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/webinar-how-to-use-birdcast-to-enjoy-spring-migration/"
		title="Webinar: How to Use BirdCast to Enjoy Spring Migration"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000666"
		aria-describedby="tribe-events-tooltip-content-10000666"
	>
		Webinar: How to Use BirdCast to Enjoy Spring Migration	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000666"
		role="tooltip"
	>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-featured-image-wrapper">
	<a
		href="https://www.birds.cornell.edu/home/event/webinar-how-to-use-birdcast-to-enjoy-spring-migration/"
		title="Webinar: How to Use BirdCast to Enjoy Spring Migration"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-featured-image-link"
	>
		<img
			
							srcset="https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2-240x180.jpg 240w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2.jpg 960w"
										alt="Blue Grosbeak in flight and images of migration forecast"
										title="VC eventpage v2"
						
		 data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2.jpg" class="tribe-events-calendar-month__calendar-event-tooltip-featured-image lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img
			src="https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2.jpg"
							srcset="https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2-720x540.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2-240x180.jpg 240w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2-768x576.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2-480x360.jpg 480w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/04/VC-eventpage-v2.jpg 960w"
										alt="Blue Grosbeak in flight and images of migration forecast"
										title="VC eventpage v2"
						class="tribe-events-calendar-month__calendar-event-tooltip-featured-image"
		/></noscript>
	</a>
</div>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-01">
		<span class="tribe-event-date-start">May 1 at 12:00 pm</span>–<span class="tribe-event-time">1:00 pm</span>	</time>
	</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/webinar-how-to-use-birdcast-to-enjoy-spring-migration/"
		title="Webinar: How to Use BirdCast to Enjoy Spring Migration"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Webinar: How to Use BirdCast to Enjoy Spring Migration	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>On <strong>May 1 at 12 p.m. ET</strong>, join the BirdCast team for a discussion about spring migration, and how you can protect migrating birds through programs such as Lights Out.</p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-02"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-2"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-02"
		>
			2		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-02"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-02"
	>
		    2
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-03"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-3"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-03"
		>
			3		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-03"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-03"
	>
		    3
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-04"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-4"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-04"
		>
			4		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-04"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-04"
	>
		    4
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-05"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-5"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-05"
		>
			5		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-05"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-05"
	>
		    5
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-06"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-6"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-06"
		>
			6		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-06"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-06"
	>
		    6
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000496 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walks/2023-05-06/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000496"
		aria-describedby="tribe-events-tooltip-content-10000496"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000496"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-06">
		<span class="tribe-event-date-start">May 6 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-2/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walks/2023-05-06/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Saturday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we look and<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walks/2023-05-06/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
		</div>

	
		<div class="tribe-events-calendar-month__week" role="row" data-js="tribe-events-month-grid-row">

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-07"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-7"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-07"
		>
			7		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-07"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-07"
	>
		    7
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000514 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-05-07/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000514"
		aria-describedby="tribe-events-tooltip-content-10000514"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000514"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-07">
		<span class="tribe-event-date-start">May 7 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-3/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-05-07/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we look and<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-05-07/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-08"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-8"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-08"
		>
			8		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-08"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-08"
	>
		    8
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-09"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-9"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-09"
		>
			9		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-09"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-09"
	>
		    9
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-10"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-10"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-10"
		>
			10		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-10"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-10"
	>
		    10
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-11"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-11"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-11"
		>
			11		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-11"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-11"
	>
		    11
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000663 tribe_events type-tribe_events status-publish has-post-thumbnail hentry" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="10:00">
		10:00 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="11:30">
			11:30 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/nests-and-eggs-an-up-close-look/"
		title="Nests and Eggs: An Up-Close Look"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000663"
		aria-describedby="tribe-events-tooltip-content-10000663"
	>
		Nests and Eggs: An Up-Close Look	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000663"
		role="tooltip"
	>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-featured-image-wrapper">
	<a
		href="https://www.birds.cornell.edu/home/event/nests-and-eggs-an-up-close-look/"
		title="Nests and Eggs: An Up-Close Look"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-featured-image-link"
	>
		<img
			
							srcset="https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize.jpg 500w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize-240x180.jpg 240w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize-480x360.jpg 480w"
										alt="Female hummingbird sits hidden on her lichen covered nest"
										title="AnnasHummingbird_EricPittman_NestWatch_resize"
						
		 data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize.jpg" class="tribe-events-calendar-month__calendar-event-tooltip-featured-image lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img
			src="https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize.jpg"
							srcset="https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize.jpg 500w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize-240x180.jpg 240w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/03/AnnasHummingbird_EricPittman_NestWatch_resize-480x360.jpg 480w"
										alt="Female hummingbird sits hidden on her lichen covered nest"
										title="AnnasHummingbird_EricPittman_NestWatch_resize"
						class="tribe-events-calendar-month__calendar-event-tooltip-featured-image"
		/></noscript>
	</a>
</div>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-11">
		<span class="tribe-event-date-start">May 11 at 10:00 am</span>–<span class="tribe-event-time">11:30 am</span>	</time>
	</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/nests-and-eggs-an-up-close-look/"
		title="Nests and Eggs: An Up-Close Look"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Nests and Eggs: An Up-Close Look	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Discover the world of nesting birds with staff from the Cornell Lab’s NestWatch program. Registration required. </p>
</div>
		<div class="tribe-events-c-small-cta tribe-common-b3 tribe-events-calendar-month__calendar-event-tooltip-cost">
	<span class="tribe-events-c-small-cta__price">
		Free	</span>
</div>
	</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-12"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-12"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-12"
		>
			12		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-12"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-12"
	>
		    12
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000672 tribe_events type-tribe_events status-publish hentry tribe_events_cat-family-story-time cat_family-story-time" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="10:30">
		10:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="11:00">
			11:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/family-story-time-2/"
		title="Family Story Time"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000672"
		aria-describedby="tribe-events-tooltip-content-10000672"
	>
		Family Story Time	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000672"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-12">
		<span class="tribe-event-date-start">May 12 at 10:30 am</span>–<span class="tribe-event-time">11:00 am</span>	</time>
	</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/family-story-time-2/"
		title="Family Story Time"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Family Story Time	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us for readings of bird-themed books from the library’s children’s collection. We’ll meet in the Visitor Center and then, if the weather allows, we’ll go outside to enjoy stories<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/family-story-time-2/" title="ReadFamily Story Time">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-13"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-13"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-13"
		>
			13		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-13"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-13"
	>
		    13
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000626 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-13/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000626"
		aria-describedby="tribe-events-tooltip-content-10000626"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000626"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-13">
		<span class="tribe-event-date-start">May 13 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-4/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-13/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-13/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
		</div>

	
		<div class="tribe-events-calendar-month__week" role="row" data-js="tribe-events-month-grid-row">

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-14"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-14"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-14"
		>
			14		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-14"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-14"
	>
		    14
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000627 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-14/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000627"
		aria-describedby="tribe-events-tooltip-content-10000627"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000627"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-14">
		<span class="tribe-event-date-start">May 14 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-4/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-14/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-14/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-15"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-15"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-15"
		>
			15		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-15"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-15"
	>
		    15
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-16"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-16"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-16"
		>
			16		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-16"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-16"
	>
		    16
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-17"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-17"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-17"
		>
			17		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-17"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-17"
	>
		    17
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-18"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-18"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-18"
		>
			18		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-18"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-18"
	>
		    18
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000676 tribe_events type-tribe_events status-publish hentry tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="13:00">
		1:00 pm	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="14:30">
			2:30 pm		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-18/"
		title="Binocular Demo"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000676"
		aria-describedby="tribe-events-tooltip-content-10000676"
	>
		Binocular Demo	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000676"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-18">
		<span class="tribe-event-date-start">May 18 at 1:00 pm</span>–<span class="tribe-event-time">2:30 pm</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/binocular-demo/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-18/"
		title="Binocular Demo"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Binocular Demo	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join Living Bird editor Marc Devokaitis for a chance to tryout more than a dozen pairs of 8x32 new, compact binoculars, and give your opinions for an upcoming review that<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-18/" title="ReadBinocular Demo">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-19"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-19"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-19"
		>
			19		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-19"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-19"
	>
		    19
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000675 tribe_events type-tribe_events status-publish hentry tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="13:00">
		1:00 pm	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="14:30">
			2:30 pm		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-19/"
		title="Binocular Demo"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000675"
		aria-describedby="tribe-events-tooltip-content-10000675"
	>
		Binocular Demo	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000675"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-19">
		<span class="tribe-event-date-start">May 19 at 1:00 pm</span>–<span class="tribe-event-time">2:30 pm</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/binocular-demo/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-19/"
		title="Binocular Demo"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Binocular Demo	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join Living Bird editor Marc Devokaitis for a chance to tryout more than a dozen pairs of 8x32 new, compact binoculars, and give your opinions for an upcoming review that<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-19/" title="ReadBinocular Demo">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-20"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-20"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-20"
		>
			20		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-20"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-20"
	>
		    20
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000628 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-20/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000628"
		aria-describedby="tribe-events-tooltip-content-10000628"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000628"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-20">
		<span class="tribe-event-date-start">May 20 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-4/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-20/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-20/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
		</div>

	
		<div class="tribe-events-calendar-month__week" role="row" data-js="tribe-events-month-grid-row">

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-21"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-21"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-21"
		>
			21		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-21"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-21"
	>
		    21
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000629 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-21/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000629"
		aria-describedby="tribe-events-tooltip-content-10000629"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000629"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-21">
		<span class="tribe-event-date-start">May 21 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-4/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-21/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-21/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-22"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-22"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-22"
		>
			22		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-22"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-22"
	>
		    22
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-23"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-23"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-23"
		>
			23		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-23"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-23"
	>
		    23
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-24"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-24"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-24"
		>
			24		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-24"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-24"
	>
		    24
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-25"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-25"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-25"
		>
			25		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-25"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-25"
	>
		    25
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--past" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-26"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-26"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-26"
		>
			26		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-26"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-26"
	>
		    26
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--current" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-27"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="true"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-27"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile tribe-events-calendar-month__day-cell--selected" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-27"
		>
			27		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-27"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-27"
	>
		    27
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000630 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-27/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000630"
		aria-describedby="tribe-events-tooltip-content-10000630"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000630"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-27">
		<span class="tribe-event-date-start">May 27 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-4/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-27/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-27/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
		</div>

	
		<div class="tribe-events-calendar-month__week" role="row" data-js="tribe-events-month-grid-row">

			
				
<div
	 class="tribe-events-calendar-month__day" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-28"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-28"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-28"
		>
			28		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-28"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-28"
	>
		    28
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000631 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-28/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000631"
		aria-describedby="tribe-events-tooltip-content-10000631"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000631"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-28">
		<span class="tribe-event-date-start">May 28 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-4/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-28/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-28/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-29"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-29"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-29"
		>
			29		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-29"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-29"
	>
		    29
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-30"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-30"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-30"
		>
			30		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-30"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-30"
	>
		    30
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000679 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-virtual-program cat_virtual-program" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="12:00">
		12:00 pm	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="13:00">
			1:00 pm		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/webinar-black-birders-week-avian-art-hour/"
		title="Webinar &#8211; Black Birders Week: Avian Art Hour"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000679"
		aria-describedby="tribe-events-tooltip-content-10000679"
	>
		Webinar &#8211; Black Birders Week: Avian Art Hour	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000679"
		role="tooltip"
	>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-featured-image-wrapper">
	<a
		href="https://www.birds.cornell.edu/home/event/webinar-black-birders-week-avian-art-hour/"
		title="Webinar &#8211; Black Birders Week: Avian Art Hour"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-featured-image-link"
	>
		<img
			
							srcset="https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-720x405.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-1280x720.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-768x432.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-1536x864.jpg 1536w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-2048x1152.jpg 2048w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-480x270.jpg 480w"
										alt="Text reads Avian Art Hour. Picture of artist Emma."
										title="Avian Art Hour"
						
		 data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-scaled.jpg" class="tribe-events-calendar-month__calendar-event-tooltip-featured-image lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img
			src="https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-scaled.jpg"
							srcset="https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-720x405.jpg 720w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-1280x720.jpg 1280w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-768x432.jpg 768w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-1536x864.jpg 1536w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-2048x1152.jpg 2048w, https://www.birds.cornell.edu/home/wp-content/uploads/2023/05/Avian-Art-Hour-480x270.jpg 480w"
										alt="Text reads Avian Art Hour. Picture of artist Emma."
										title="Avian Art Hour"
						class="tribe-events-calendar-month__calendar-event-tooltip-featured-image"
		/></noscript>
	</a>
</div>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-05-30">
		<span class="tribe-event-date-start">May 30 at 12:00 pm</span>–<span class="tribe-event-time">1:00 pm</span>	</time>
	</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/webinar-black-birders-week-avian-art-hour/"
		title="Webinar &#8211; Black Birders Week: Avian Art Hour"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Webinar &#8211; Black Birders Week: Avian Art Hour	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>On <strong>Tues., May 30 at 12 p.m. Eastern</strong>, grab your drawing supplies to follow along with artist Emma Brittain-Hardy as she shows us the basics of drawing birds.</p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-05-31"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-05-31"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-05-31"
		>
			31		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-05-31"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-05-31"
	>
		    31
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--other-month tribe-events-calendar-month__day--next-month" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-06-01"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-06-1"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			0 events,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-06-01"
		>
			1		</time>
	</h3>
	
</button>
	
<div
	id="tribe-events-calendar-day-2023-06-01"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		0 events,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-06-01"
	>
		    1
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
			</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--other-month tribe-events-calendar-month__day--next-month" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-06-02"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-06-2"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-06-02"
		>
			2		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-06-02"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-06-02"
	>
		    2
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000678 tribe_events type-tribe_events status-publish hentry" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="16:00">
		4:00 pm	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="17:00">
			5:00 pm		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/closing-early/"
		title="Closing Early"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000678"
		aria-describedby="tribe-events-tooltip-content-10000678"
	>
		Closing Early	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000678"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-06-02">
		<span class="tribe-event-date-start">June 2 at 4:00 pm</span>–<span class="tribe-event-time">5:00 pm</span>	</time>
	</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/closing-early/"
		title="Closing Early"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Closing Early	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>The Visitor Center will be closing one hour early, at 4 p.m. We apologize for the inconvenience.</p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
				
<div
	 class="tribe-events-calendar-month__day tribe-events-calendar-month__day--other-month tribe-events-calendar-month__day--next-month" 	role="gridcell"
	aria-labelledby="tribe-events-calendar-day-2023-06-03"
	data-js="tribe-events-month-grid-cell"
>
	
<button
	aria-expanded="false"
	aria-controls="tribe-events-calendar-mobile-day-2023-06-3"
	 class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--mobile" 	data-js="tribe-events-calendar-month-day-cell-mobile"
	tabindex="-1"
>
	<h3 class="tribe-events-calendar-month__day-date tribe-common-h6 tribe-common-h--alt">
		<span class="tribe-common-a11y-visual-hide">
			1 event,
		</span>
		<time
			class="tribe-events-calendar-month__day-date-daynum"
			datetime="2023-06-03"
		>
			3		</time>
	</h3>
	
		<em
		class="tribe-events-calendar-month__mobile-events-icon tribe-events-calendar-month__mobile-events-icon--event"
		aria-label="Has events"
		title="Has events"
	>
	</em>
</button>
	
<div
	id="tribe-events-calendar-day-2023-06-03"
	class="tribe-events-calendar-month__day-cell tribe-events-calendar-month__day-cell--desktop tribe-common-a11y-hidden"
>
	
<span class="tribe-events-calendar-month__day-date tribe-common-h4">
	<span class="tribe-common-a11y-visual-hide">
		1 event,
	</span>
	<time
		class="tribe-events-calendar-month__day-date-daynum"
		datetime="2023-06-03"
	>
		    3
	</time>
</span>
	<div class="tribe-events-calendar-month__events">
		
		
	
	
<article  class="tribe-events-calendar-month__calendar-event post-10000632 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month__calendar-event-details">

		<div class="tribe-events-calendar-month__calendar-event-datetime">
		<time datetime="08:30">
		8:30 am	</time>
			<span class="tribe-events-calendar-month__calendar-event-datetime-separator">–</span>
		<time datetime="10:00">
			10:00 am		</time>
		</div>
		<span class="tribe-events-calendar-month__calendar-event-title tribe-common-h8 tribe-common-h--alt">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-06-03/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-title-link tribe-common-anchor-thin"
		data-js="tribe-events-tooltip"
		data-tooltip-content="#tribe-events-tooltip-content-10000632"
		aria-describedby="tribe-events-tooltip-content-10000632"
	>
		Beginner Bird Walk	</a>
</span>

		<div class="tribe-events-calendar-month__calendar-event-tooltip-template tribe-common-a11y-hidden">
	<div
		class="tribe-events-calendar-month__calendar-event-tooltip"
		id="tribe-events-tooltip-content-10000632"
		role="tooltip"
	>
				<div class="tribe-events-calendar-month__calendar-event-tooltip-datetime">
		<time datetime="2023-06-03">
		<span class="tribe-event-date-start">June 3 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>	</time>
	
<span class="tribe-events-calendar-series-archive__container">
	<a
		href="https://www.birds.cornell.edu/home/series/beginner-bird-walk-4/"
		title="Recurring Event"
		class="tribe-events-calendar-series-archive__link"
	>
		
<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--series tribe-events-series-archive__icon"  width="14" height="12" viewBox="0 0 14 12" fill="none" xmlns="http://www.w3.org/2000/svg">
	<title>Recurring Event</title>
	<rect x="0.5" y="4.5" width="9" height="7" />
	<path d="M2 2.5H11.5V10" />
	<path d="M4 0.5H13.5V8" />
</svg>
	</a>
</span>
</div>
		<h3 class="tribe-events-calendar-month__calendar-event-tooltip-title tribe-common-h7">
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-06-03/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month__calendar-event-tooltip-title-link tribe-common-anchor-thin"
	>
		Beginner Bird Walk	</a>
</h3>
		<div class="tribe-events-calendar-month__calendar-event-tooltip-description tribe-common-b3">
	<p>Join us every Saturday and Sunday morning at 8:30 a.m. at the front entrance of the Cornell Lab of Ornithology. We will walk the trails of Sapsucker Woods as we<a class="excerpt-read-more" href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-06-03/" title="ReadBeginner Bird Walk">... Read more &raquo;</a></p>
</div>
			</div>
</div>

	</div>

</article>

	</div>

	
</div>
</div>

			
		</div>

	
</div>

		</div>

		
		<section class="tribe-events-calendar-month-mobile-events" data-js="tribe-events-calendar-month-mobile-events">

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-04-30">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-04-30"
	>
		April 30	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000513 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-04-30">
			<span class="tribe-event-date-start">April 30 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-04-30/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

					
			
			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000673 tribe_events type-tribe_events status-publish hentry tribe_events_cat-behind-the-scenes-tours cat_behind-the-scenes-tours" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-04-30">
			<span class="tribe-event-date-start">April 30 at 11:00 am</span>–<span class="tribe-event-time">12:00 pm</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/guided-tour-18/"
		title="Guided Tour"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Guided Tour	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-1">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-01"
	>
		May 1	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000666 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-virtual-program cat_virtual-program" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-01">
			<span class="tribe-event-date-start">May 1 at 12:00 pm</span>–<span class="tribe-event-time">1:00 pm</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/webinar-how-to-use-birdcast-to-enjoy-spring-migration/"
		title="Webinar: How to Use BirdCast to Enjoy Spring Migration"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Webinar: How to Use BirdCast to Enjoy Spring Migration	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-2">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-3">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-4">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-5">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-6">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-06"
	>
		May 6	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000496 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-06">
			<span class="tribe-event-date-start">May 6 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walks/2023-05-06/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-7">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-07"
	>
		May 7	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000514 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-07">
			<span class="tribe-event-date-start">May 7 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk/2023-05-07/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-8">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-9">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-10">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-11">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-11"
	>
		May 11	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000663 tribe_events type-tribe_events status-publish has-post-thumbnail hentry" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-11">
			<span class="tribe-event-date-start">May 11 at 10:00 am</span>–<span class="tribe-event-time">11:30 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/nests-and-eggs-an-up-close-look/"
		title="Nests and Eggs: An Up-Close Look"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Nests and Eggs: An Up-Close Look	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-12">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-12"
	>
		May 12	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000672 tribe_events type-tribe_events status-publish hentry tribe_events_cat-family-story-time cat_family-story-time" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-12">
			<span class="tribe-event-date-start">May 12 at 10:30 am</span>–<span class="tribe-event-time">11:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/family-story-time-2/"
		title="Family Story Time"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Family Story Time	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-13">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-13"
	>
		May 13	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000626 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-13">
			<span class="tribe-event-date-start">May 13 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-13/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-14">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-14"
	>
		May 14	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000627 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-14">
			<span class="tribe-event-date-start">May 14 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-14/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-15">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-16">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-17">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-18">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-18"
	>
		May 18	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000676 tribe_events type-tribe_events status-publish hentry tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-18">
			<span class="tribe-event-date-start">May 18 at 1:00 pm</span>–<span class="tribe-event-time">2:30 pm</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-18/"
		title="Binocular Demo"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Binocular Demo	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-19">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-19"
	>
		May 19	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000675 tribe_events type-tribe_events status-publish hentry tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-19">
			<span class="tribe-event-date-start">May 19 at 1:00 pm</span>–<span class="tribe-event-time">2:30 pm</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/binocular-demo/2023-05-19/"
		title="Binocular Demo"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Binocular Demo	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-20">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-20"
	>
		May 20	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000628 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-20">
			<span class="tribe-event-date-start">May 20 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-20/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-21">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-21"
	>
		May 21	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000629 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-21">
			<span class="tribe-event-date-start">May 21 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-21/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-22">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-23">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-24">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-25">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-26">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day tribe-events-calendar-month-mobile-events__mobile-day--show"  id="tribe-events-calendar-mobile-day-2023-05-27">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-27"
	>
		May 27	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000630 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-27">
			<span class="tribe-event-date-start">May 27 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-27/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-28">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-28"
	>
		May 28	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000631 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-28">
			<span class="tribe-event-date-start">May 28 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-05-28/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-29">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-30">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-05-30"
	>
		May 30	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000679 tribe_events type-tribe_events status-publish has-post-thumbnail hentry tribe_events_cat-virtual-program cat_virtual-program" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-05-30">
			<span class="tribe-event-date-start">May 30 at 12:00 pm</span>–<span class="tribe-event-time">1:00 pm</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/webinar-black-birders-week-avian-art-hour/"
		title="Webinar &#8211; Black Birders Week: Avian Art Hour"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Webinar &#8211; Black Birders Week: Avian Art Hour	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-05-31">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-06-1">

	
		<div  class="tribe-events-header__messages tribe-events-c-messages tribe-common-b2 tribe-events-header__messages--mobile tribe-events-header__messages--day"  >
			<div class="tribe-events-c-messages__message tribe-events-c-messages__message--notice" role="alert">
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--messages-not-found tribe-events-c-messages__message-icon-svg"  viewBox="0 0 21 23" xmlns="http://www.w3.org/2000/svg"><g fill-rule="evenodd"><path d="M.5 2.5h20v20H.5z"/><path stroke-linecap="round" d="M7.583 11.583l5.834 5.834m0-5.834l-5.834 5.834" class="tribe-common-c-svgicon__svg-stroke"/><path stroke-linecap="round" d="M4.5.5v4m12-4v4"/><path stroke-linecap="square" d="M.5 7.5h20"/></g></svg>
			<ul class="tribe-events-c-messages__message-list">
									<li
						class="tribe-events-c-messages__message-list-item"
						 data-key="no-events-in-day" 					>
					There are no events on this day.					</li>
							</ul>
		</div>
	</div>

	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-06-2">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-06-02"
	>
		June 2	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000678 tribe_events type-tribe_events status-publish hentry" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-06-02">
			<span class="tribe-event-date-start">June 2 at 4:00 pm</span>–<span class="tribe-event-time">5:00 pm</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/closing-early/"
		title="Closing Early"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Closing Early	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
		
<div  class="tribe-events-calendar-month-mobile-events__mobile-day"  id="tribe-events-calendar-mobile-day-2023-06-3">

	
					
			<div class="tribe-events-c-day-marker tribe-events-calendar-month-mobile-events__day-marker">
	<time
		class="tribe-events-c-day-marker__date tribe-common-h7 tribe-common-h--alt"
		datetime="2023-06-03"
	>
		June 3	</time>
</div>

			
			
<article  class="tribe-events-calendar-month-mobile-events__mobile-event post-10000632 tribe_events type-tribe_events status-publish hentry tribe_events_cat-beginner-bird-walks cat_beginner-bird-walks tribe-recurring-event tribe-recurring-event-parent" >

	
	<div class="tribe-events-calendar-month-mobile-events__mobile-event-details">

		<div class="tribe-events-calendar-month-mobile-events__mobile-event-datetime tribe-common-b2">
				<time datetime="2023-06-03">
			<span class="tribe-event-date-start">June 3 at 8:30 am</span>–<span class="tribe-event-time">10:00 am</span>		</time>
		</div>
		<h3  class="tribe-events-calendar-month-mobile-events__mobile-event-title tribe-common-h7" >
	<a
		href="https://www.birds.cornell.edu/home/event/beginner-bird-walk-2/2023-06-03/"
		title="Beginner Bird Walk"
		rel="bookmark"
		class="tribe-events-calendar-month-mobile-events__mobile-event-title-link tribe-common-anchor"
	>
		Beginner Bird Walk	</a>
</h3>
		
	</div>
</article>

		
		
	</div>

	
	<nav class="tribe-events-calendar-month-nav tribe-events-c-nav">
	<ul class="tribe-events-c-nav__list">
		<li class="tribe-events-c-nav__list-item tribe-events-c-nav__list-item--prev">
	<a
		href="https://www.birds.cornell.edu/home/events/month/2023-04/?shortcode=e0d78de6"
		rel="prev"
		class="tribe-events-c-nav__prev tribe-common-b2"
		data-js="tribe-events-view-link"
		aria-label="Previous month, Apr"
		title="Previous month, Apr"
		rel="prev"
	>
		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-left tribe-events-c-nav__prev-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M9.7 14.4l-1.5 1.5L.3 8 8.2.1l1.5 1.5L3.3 8l6.4 6.4z"/></svg>
		Apr	</a>
</li>

		<li class="tribe-events-c-nav__list-item tribe-events-c-nav__list-item--today">
	<a
		href="https://www.birds.cornell.edu/home/events/month/?pagename=visit%2Fevents&#038;shortcode=e0d78de6"
		class="tribe-events-c-nav__today tribe-common-b2"
		data-js="tribe-events-view-link"
		aria-label="Click to select the current month"
		title="Click to select the current month"
	>
		This Month	</a>
</li>

		<li class="tribe-events-c-nav__list-item tribe-events-c-nav__list-item--next">
	<a
		href="https://www.birds.cornell.edu/home/events/month/2023-06/?shortcode=e0d78de6"
		rel="next"
		class="tribe-events-c-nav__next tribe-common-b2"
		data-js="tribe-events-view-link"
		aria-label="Next month, Jun"
		title="Next month, Jun"
		rel="next"
	>
		Jun		<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-right tribe-events-c-nav__next-icon-svg"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 10 16"><path d="M.3 1.6L1.8.1 9.7 8l-7.9 7.9-1.5-1.5L6.7 8 .3 1.6z"/></svg>
	</a>
</li>
	</ul>
</nav>

</section>

		<div class="tribe-events-c-subscribe-dropdown__container">
	<div class="tribe-events-c-subscribe-dropdown">
		<div class="tribe-common-c-btn-border tribe-events-c-subscribe-dropdown__button" tabindex="0">
			<button class="tribe-events-c-subscribe-dropdown__button-text">
				Subscribe to calendar			</button>
			<svg  class="tribe-common-c-svgicon tribe-common-c-svgicon--caret-down tribe-events-c-subscribe-dropdown__button-icon"  viewBox="0 0 10 7" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M1.008.609L5 4.6 8.992.61l.958.958L5 6.517.05 1.566l.958-.958z" class="tribe-common-c-svgicon__svg-fill"/></svg>
		</div>
		<div class="tribe-events-c-subscribe-dropdown__content">
			<ul class="tribe-events-c-subscribe-dropdown__list" tabindex="0">
									
<li class="tribe-events-c-subscribe-dropdown__list-item">
	<a
		href="https://www.google.com/calendar/render?cid=webcal%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2F%3Fpost_type%3Dtribe_events%26tribe-bar-date%3D2023-05-27%26ical%3D1%26eventDisplay%3Dlist"
		class="tribe-events-c-subscribe-dropdown__list-item-link"
		tabindex="0"
		target="_blank"
		rel="noopener noreferrer nofollow noindex"
	>
		Google Calendar	</a>
</li>
									
<li class="tribe-events-c-subscribe-dropdown__list-item">
	<a
		href="webcal://www.birds.cornell.edu/home/?post_type=tribe_events&#038;tribe-bar-date=2023-05-27&#038;ical=1&#038;eventDisplay=list"
		class="tribe-events-c-subscribe-dropdown__list-item-link"
		tabindex="0"
		target="_blank"
		rel="noopener noreferrer nofollow noindex"
	>
		iCalendar	</a>
</li>
									
<li class="tribe-events-c-subscribe-dropdown__list-item">
	<a
		href="https://outlook.office.com/owa?path=%2Fcalendar%2Faction%2Fcompose&#038;rru=addsubscription&#038;url=webcal%253A%252F%252Fwww.birds.cornell.edu%252Fhome%252F%253Fpost_type%253Dtribe_events%2526tribe-bar-date%253D2023-05-27%2526eventDisplay%253Dlist%26ical%3D1&#038;name=Birds%2C+Cornell+Lab+of+Ornithology+Events+%7C+Birds%2C+Cornell+Lab+of+Ornithology"
		class="tribe-events-c-subscribe-dropdown__list-item-link"
		tabindex="0"
		target="_blank"
		rel="noopener noreferrer nofollow noindex"
	>
		Outlook 365	</a>
</li>
									
<li class="tribe-events-c-subscribe-dropdown__list-item">
	<a
		href="https://outlook.live.com/owa?path=%2Fcalendar%2Faction%2Fcompose&#038;rru=addsubscription&#038;url=webcal%253A%252F%252Fwww.birds.cornell.edu%252Fhome%252F%253Fpost_type%253Dtribe_events%2526tribe-bar-date%253D2023-05-27%2526eventDisplay%253Dlist%26ical%3D1&#038;name=Birds%2C+Cornell+Lab+of+Ornithology+Events+%7C+Birds%2C+Cornell+Lab+of+Ornithology"
		class="tribe-events-c-subscribe-dropdown__list-item-link"
		tabindex="0"
		target="_blank"
		rel="noopener noreferrer nofollow noindex"
	>
		Outlook Live	</a>
</li>
									
<li class="tribe-events-c-subscribe-dropdown__list-item">
	<a
		href="https://www.birds.cornell.edu/home/events/month/?shortcode=e0d78de6&#038;ical=1"
		class="tribe-events-c-subscribe-dropdown__list-item-link"
		tabindex="0"
		target="_blank"
		rel="noopener noreferrer nofollow noindex"
	>
		Export .ics file	</a>
</li>
									
<li class="tribe-events-c-subscribe-dropdown__list-item">
	<a
		href="https://www.birds.cornell.edu/home/events/month/?shortcode=e0d78de6&#038;outlook-ical=1#038;ical=1"
		class="tribe-events-c-subscribe-dropdown__list-item-link"
		tabindex="0"
		target="_blank"
		rel="noopener noreferrer nofollow noindex"
	>
		Export Outlook .ics file	</a>
</li>
							</ul>
		</div>
	</div>
</div>

		
	</div>

</div>

<script class="tribe-events-breakpoints">
	( function () {
		var completed = false;

		function initBreakpoints() {
			if ( completed ) {
				// This was fired already and completed no need to attach to the event listener.
				document.removeEventListener( 'DOMContentLoaded', initBreakpoints );
				return;
			}

			if ( 'undefined' === typeof window.tribe ) {
				return;
			}

			if ( 'undefined' === typeof window.tribe.events ) {
				return;
			}

			if ( 'undefined' === typeof window.tribe.events.views ) {
				return;
			}

			if ( 'undefined' === typeof window.tribe.events.views.breakpoints ) {
				return;
			}

			if ( 'function' !== typeof (window.tribe.events.views.breakpoints.setup) ) {
				return;
			}

			var container = document.querySelectorAll( '[data-view-breakpoint-pointer="99d6f96e-78b8-4903-ac59-ae6681bcc433"]' );
			if ( ! container ) {
				return;
			}

			window.tribe.events.views.breakpoints.setup( container );
			completed = true;
			// This was fired already and completed no need to attach to the event listener.
			document.removeEventListener( 'DOMContentLoaded', initBreakpoints );
		}

		// Try to init the breakpoints right away.
		initBreakpoints();
		document.addEventListener( 'DOMContentLoaded', initBreakpoints );
	})();
</script>

        </section> <!-- end Main content -->

      
      
    
    
      <section id="global-cta" aria-label="Call to action" class="global-cta">
      <div class="wp-block-group cta">
        
<h2>Don't miss a thing! Join our email list</h2>
<p><!--[if lte IE 8]><script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2-legacy.js"></script> <![endif]--><script charset="utf-8" type="text/javascript" src="//js.hsforms.net/forms/v2.js"></script> <script>hbspt.forms.create({portalId: "95627", formId: "ee3402b4-bebe-48ff-870f-7e51695b366d"});</script></p>      </div>
    </section>
                
                        
      
  </div><!-- .content-container -->
					
</article> <!-- end article -->      
    	
    
  </main>

					
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
		</button><div class="hustle-image hustle-image-fit--cover" aria-hidden="true"><img  alt="Evening Grosbeak perched on a snag"  data-src="https://www.birds.cornell.edu/home/wp-content/uploads/2020/10/EveningGrosbeak_BellemareCeline-smaller.jpg" class="hustle-image-position--centercenter lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" /><noscript><img src="https://www.birds.cornell.edu/home/wp-content/uploads/2020/10/EveningGrosbeak_BellemareCeline-smaller.jpg" alt="Evening Grosbeak perched on a snag" class="hustle-image-position--centercenter" /></noscript></div><div class="hustle-content"><div class="hustle-content-wrap"><div class="hustle-group-title"><span class="hustle-title">Sign Up for eNews</span></div><div class="hustle-group-content"><p><script>(function() {
	window.mc4wp = window.mc4wp || {
		listeners: [],
		forms: {
			on: function(evt, cb) {
				window.mc4wp.listeners.push(
					{
						event   : evt,
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
     if(!window.location.pathname.toLowerCase().includes('terms-of-use') && !window.location.pathname.toLowerCase().includes('our-commitment-to-diversity-equity-inclusion-and-justice') && !window.location.pathname.toLowerCase().includes('web-accessibility-assistance')){
          var clo_lightbox = new CLO_Lightbox();
          clo_lightbox.create('bce', 'bcehome', window.location.pathname, 'live');
     }
</script>		<script>
		( function ( body ) {
			'use strict';
			body.className = body.className.replace( /\btribe-no-js\b/, 'tribe-js' );
		} )( document.body );
		</script>
		<script>(function() {function maybePrefixUrlField() {
	if (this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
		this.value = "http://" + this.value;
	}
}

var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
if (urlFields) {
	for (var j=0; j < urlFields.length; j++) {
		urlFields[j].addEventListener('blur', maybePrefixUrlField);
	}
}
})();</script><script> /* <![CDATA[ */var tribe_l10n_datatables = {"aria":{"sort_ascending":": activate to sort column ascending","sort_descending":": activate to sort column descending"},"length_menu":"Show _MENU_ entries","empty_table":"No data available in table","info":"Showing _START_ to _END_ of _TOTAL_ entries","info_empty":"Showing 0 to 0 of 0 entries","info_filtered":"(filtered from _MAX_ total entries)","zero_records":"No matching records found","search":"Search:","all_selected_text":"All items on this page were selected. ","select_all_link":"Select all pages","clear_selection":"Clear Selection.","pagination":{"all":"All","next":"Next","previous":"Previous"},"select":{"rows":{"0":"","_":": Selected %d rows","1":": Selected 1 row"}},"datepicker":{"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dayNamesMin":["S","M","T","W","T","F","S"],"monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesShort":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthNamesMin":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"nextText":"Next","prevText":"Prev","currentText":"Today","closeText":"Done","today":"Today","clear":"Clear"}};/* ]]> */ </script><style id='core-block-supports-inline-css' type='text/css'>
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
var tribe_dynamic_help_text = {"date_with_year":"F j, Y","date_no_year":"F j","datepicker_format":"m\/d\/Y","datepicker_format_index":"2","days":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"daysShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"months":["January","February","March","April","May","June","July","August","September","October","November","December"],"monthsShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"msgs":"[\"This event is from %%starttime%% to %%endtime%% on %%startdatewithyear%%.\",\"This event is at %%starttime%% on %%startdatewithyear%%.\",\"This event is all day on %%startdatewithyear%%.\",\"This event starts at %%starttime%% on %%startdatenoyear%% and ends at %%endtime%% on %%enddatewithyear%%\",\"This event starts at %%starttime%% on %%startdatenoyear%% and ends on %%enddatewithyear%%\",\"This event is all day starting on %%startdatenoyear%% and ending on %%enddatewithyear%%.\"]"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/src/resources/js/events-dynamic.min.js?ver=6.0.6.2' id='tribe-events-dynamic-js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/swv/js/index.js?ver=5.7.2' id='swv-js'></script>
<script type='text/javascript' id='contact-form-7-js-extra'>
/* <![CDATA[ */
var wpcf7 = {"api":{"root":"https:\/\/www.birds.cornell.edu\/home\/wp-json\/","namespace":"contact-form-7\/v1"},"cached":"1"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/contact-form-7/includes/js/index.js?ver=5.7.2' id='contact-form-7-js'></script>
<script type='text/javascript' id='hui_scripts-js-extra'>
/* <![CDATA[ */
var hustleSettings = {"mobile_breakpoint":"782"};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/hustle/assets/hustle-ui/js/hustle-ui.min.js?ver=4.6.3' id='hui_scripts-js'></script>
<script src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/js/underscore-before.js'></script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-includes/js/underscore.min.js?ver=1.13.4' id='underscore-js'></script>
<script src='https://www.birds.cornell.edu/home/wp-content/plugins/the-events-calendar/common/src/resources/js/underscore-after.js'></script>
<script type='text/javascript' id='hustle_front-js-extra'>
/* <![CDATA[ */
var Modules = [{"settings":{"auto_close_success_message":"0","triggers":{"on_time_delay":"0","on_time_unit":"seconds","on_scroll":"scrolled","on_scroll_page_percent":"2","on_scroll_css_selector":"","enable_on_click_element":"1","on_click_element":"","enable_on_click_shortcode":"1","on_exit_intent_per_session":"1","on_exit_intent_delayed_time":"0","on_exit_intent_delayed_unit":"seconds","on_adblock_delay":"0","on_adblock_delay_unit":"seconds","trigger":["scroll"],"on_exit_intent":"true","on_exit_intent_delayed":"0","on_adblock":"false","enable_on_adblock_delay":"0","on_time":"false","on_adblock_delayed":"false","on_adblock_delayed_time":"5","on_adblock_delayed_unit":"seconds"},"animation_in":"slideInUp","animation_out":"slideOutUp","after_close":"no_show_all","expiration":"1","expiration_unit":"days","after_optin_expiration":365,"after_optin_expiration_unit":"days","after_cta_expiration":365,"after_cta_expiration_unit":"days","on_submit":"default","on_submit_delay":"5","on_submit_delay_unit":"seconds","close_cta":"0","close_cta_time":"0","close_cta_unit":"seconds","hide_after_cta":"keep_show","hide_after_subscription":"keep_show","is_schedule":"0","schedule":{"not_schedule_start":"1","start_date":"10\/21\/2020","start_hour":"12","start_minute":"00","start_meridiem_offset":"am","not_schedule_end":"1","end_date":"10\/27\/2020","end_hour":"11","end_minute":"59","end_meridiem_offset":"pm","active_days":"all","week_days":[],"is_active_all_day":"1","day_start_hour":"00","day_start_minute":"00","day_start_meridiem_offset":"am","day_end_hour":"11","day_end_minute":"59","day_end_meridiem_offset":"pm","time_to_use":"server","custom_timezone":"UTC"},"display_position":"se","auto_hide":"0","auto_hide_unit":"hours","auto_hide_time":"5","after_close_trigger":["click_close_icon"],"conditions":{"pages":{"filter_type":"except","pages":["7606"]}},"allow_scroll_page":"0","not_close_on_background_click":"false","pages":["7606"],"filter_type":"except","close_on_background_click":"1"},"module_id":"13","blog_id":"0","module_name":"Sapsucker Woods eNews","module_type":"slidein","active":"1","test_mode":"0","module_mode":"informational"}];
var incOpt = {"conditional_tags":{"is_single":false,"is_singular":true,"is_tag":false,"is_category":false,"is_author":false,"is_date":false,"is_post_type_archive":false,"is_404":false,"is_front_page":false,"is_search":false},"is_admin":"","real_page_id":"1248","thereferrer":"https:\/\/www.birds.cornell.edu\/home\/visit\/","actual_url":"www.birds.cornell.edu\/home\/visit\/events\/","full_actual_url":"https:\/\/www.birds.cornell.edu\/home\/visit\/events\/","native_share_enpoints":{"facebook":"https:\/\/www.facebook.com\/sharer\/sharer.php?u=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents","twitter":"https:\/\/twitter.com\/intent\/tweet?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents&text=Events","pinterest":"https:\/\/www.pinterest.com\/pin\/create\/button\/?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents","reddit":"https:\/\/www.reddit.com\/submit?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents","linkedin":"https:\/\/www.linkedin.com\/shareArticle?mini=true&url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents","vkontakte":"https:\/\/vk.com\/share.php?url=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents","whatsapp":"https:\/\/api.whatsapp.com\/send?text=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents","email":"mailto:?subject=Events&body=https%3A%2F%2Fwww.birds.cornell.edu%2Fhome%2Fvisit%2Fevents"},"ajaxurl":"https:\/\/www.birds.cornell.edu\/home\/wp-admin\/admin-ajax.php","page_id":"1248","page_slug":"visit-events","is_upfront":"","script_delay":"3000"};
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
var wp_post_vars = {"postSlug":"events"};
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
var mc4wp_ajax_vars = {"loading_character":"\u2022","ajax_url":"https:\/\/www.birds.cornell.edu\/home\/wp-admin\/admin-ajax.php?action=mc4wp-form","error_text":"Oops. Something went wrong. Please try again later."};
/* ]]> */
</script>
<script type='text/javascript' src='https://www.birds.cornell.edu/home/wp-content/plugins/mc4wp-premium/ajax-forms/assets/js/ajax-forms.js?ver=4.9' id='mc4wp-ajax-forms-js'></script>
<style type="text/css" id="hustle-module-13-0-styles" class="hustle-module-styles hustle-module-styles-13">@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-slidein-content .hustle-info {max-width: 800px;}}.hustle-ui.module_id_13  .hustle-slidein-content {-moz-box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);-webkit-box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13  .hustle-slidein-content {-moz-box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);-webkit-box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);box-shadow: 3px 3px 5px 5px rgba(0,0,0,0.2);}} .hustle-ui.module_id_13 .hustle-layout {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-color: #dadada;border-radius: 0px 0px 0px 0px;overflow: hidden;background-color: #38454e;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;}} .hustle-ui.module_id_13 .hustle-layout .hustle-layout-content {padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;border-color: rgba(0,0,0,0);background-color: rgba(0,0,0,0);-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);}.hustle-ui.module_id_13 .hustle-main-wrapper {position: relative;padding: 30px 0 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-layout-content {padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);}}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-main-wrapper {padding: 30px 0 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-image {background-color: #35414a;}.hustle-ui.module_id_13 .hustle-layout .hustle-image {height: 150px;overflow: hidden;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image {max-width: 320px;height: auto;min-height: 0;-webkit-box-flex: 0;-ms-flex: 0 0 320px;flex: 0 0 320px;}}.hustle-ui.module_id_13 .hustle-layout .hustle-image img {width: 100%;max-width: unset;height: 100%;display: block;position: absolute;object-fit: cover;-ms-interpolation-mode: bicubic;}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {width: auto;max-width: unset;height: auto;max-height: unset;}}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {width: 100%;max-width: unset;height: 100%;display: block;position: absolute;object-fit: cover;-ms-interpolation-mode: bicubic;}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {width: auto;max-width: unset;height: auto;max-height: unset;}}.hustle-ui.module_id_13 .hustle-layout .hustle-image img {object-position: center center;-o-object-position: center center;}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {left: 50%;}}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);}}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {top: 50%;}}@media all and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui.module_id_13 .hustle-layout .hustle-image img {transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);}}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {object-position: center center;-o-object-position: center center;}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {left: 50%;right: auto;}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {top: 50%;bottom: auto;}}@media all and (min-width: 783px) and (-ms-high-contrast: none), (-ms-high-contrast: active) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-image img {transform: translate(-50%,-50%);-ms-transform: translate(-50%,-50%);-webkit-transform: translate(-50%,-50%);}}  .hustle-ui.module_id_13 .hustle-layout .hustle-content {margin: 0px 0px 0px 0px;padding: 0 10px 0 10px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;border-color: rgba(0,0,0,0);background-color: rgba(0,0,0,0);-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);}.hustle-ui.module_id_13 .hustle-layout .hustle-content .hustle-content-wrap {padding: 10px 0 10px 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-content {margin: 0px 0px 0px 0px;padding: 0 20 0 20;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-content .hustle-content-wrap {padding: 20px 0 20px 0;}} .hustle-ui.module_id_13 .hustle-layout .hustle-title {display: block;margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-color: rgba(0,0,0,0);border-radius: 0px 0px 0px 0px;background-color: rgba(0,0,0,0);box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);color: #fdfdfd;font: 400 33px/38px Georgia,Times,serif;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;text-align: left;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-title {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;border-radius: 0px 0px 0px 0px;box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-moz-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);-webkit-box-shadow: 0px 0px 0px 0px rgba(0,0,0,0);font: 400 33px/38px Georgia,Times,serif;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;text-align: left;}} .hustle-ui.module_id_13 .hustle-layout .hustle-group-content {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-color: rgba(0,0,0,0);border-width: 0px 0px 0px 0px;border-style: solid;color: #adb5b7;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content b,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content strong {font-weight: bold;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a:visited {color: #ffffff;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a:hover {color: #ffffff;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a:focus,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content a:active {color: #ffffff;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content {margin: 0px 0px 0px 0px;padding: 0px 0px 0px 0px;border-width: 0px 0px 0px 0px;border-style: solid;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content {color: #adb5b7;font-size: 14px;line-height: 1.45em;font-family: Open Sans;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content {font-size: 14px;line-height: 1.45em;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content p:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: normal 14px/1.45em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content p:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content p:not([class*="forminator-"]) {margin: 0 0 10px;font: normal 14px/1.45em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content p:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h1:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 28px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h1:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h1:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 28px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h1:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h2:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font-size: 22px;line-height: 1.4em;font-weight: 700;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h2:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h2:not([class*="forminator-"]) {margin: 0 0 10px;font-size: 22px;line-height: 1.4em;font-weight: 700;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h2:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h3:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 18px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h3:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h3:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 18px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h3:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h4:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 16px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h4:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h4:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 16px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h4:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h5:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 14px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h5:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h5:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 14px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h5:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h6:not([class*="forminator-"]) {margin: 0 0 10px;color: #adb5b7;font: 700 12px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: uppercase;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content h6:not([class*="forminator-"]):last-child {margin-bottom: 0;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h6:not([class*="forminator-"]) {margin: 0 0 10px;font: 700 12px/1.4em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: uppercase;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content h6:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]),.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]) {margin: 0 0 10px;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]):last-child,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]):last-child {margin-bottom: 0;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content li:not([class*="forminator-"]) {margin: 0 0 5px;color: #adb5b7;font: normal 14px/1.45em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content li:not([class*="forminator-"]):last-child {margin-bottom: 0;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]) li:before {color: #ADB5B7}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]) li:before {background-color: #ADB5B7}@media screen and (min-width: 783px) {.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]),.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]) {margin: 0 0 20px;}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ol:not([class*="forminator-"]):last-child,.hustle-ui.module_id_13 .hustle-layout .hustle-group-content ul:not([class*="forminator-"]):last-child {margin: 0;}}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content li:not([class*="forminator-"]) {margin: 0 0 5px;font: normal 14px/1.45em Open Sans;font-style: normal;letter-spacing: 0px;text-transform: none;text-decoration: none;}.hustle-ui:not(.hustle-size--small).module_id_13 .hustle-layout .hustle-group-content li:not([class*="forminator-"]):last-child {margin-bottom: 0;}}.hustle-ui.module_id_13 .hustle-layout .hustle-group-content blockquote {margin-right: 0;margin-left: 0;}.hustle-ui.module_id_13 button.hustle-button-close {color: #ffffff;background: transparent;border-radius: 0;position: absolute;z-index: 1;display: block;right: 0;left: auto;top: 0;bottom: auto;transform: unset;}.hustle-ui.module_id_13 button.hustle-button-close:hover {color: #ffffff;}.hustle-ui.module_id_13 button.hustle-button-close:focus {color: #ffffff;}@media screen and (min-width: 783px) {.hustle-ui:not(.hustle-size--small).module_id_13 button.hustle-button-close {background: transparent;border-radius: 0;display: block;right: 0;left: auto;top: 0;bottom: auto;transform: unset;}} .hustle-ui.module_id_13 .hustle-layout .hustle-group-content blockquote {border-left-color: #38C5B5;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] h2 span{display:  inline-block !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] h2 span{display:  inline-block !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form input{display:  inline-block; padding:  .3rem .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] h2 span{display:  inline-block !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form input{display:  inline-block; padding:  .3rem .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form [type=submit]{font-size: 18px; border-radius:  0px 4px 4px 0px; padding:  10px 0;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout{background-color:  #333 !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{ padding:  0 20px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message{color: #fff; text-align:  center;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-modal-message p{margin-top:  .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-button-close{border-radius:  25px; background-color:  rgba(0, 0, 0, 0.5); margin-bottom: 4px;margin-right: 4px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout a.hustle-button-cta{display: block; margin:  0 auto; width: 30%; border-radius: 25px;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-group-title .hustle-title{margin-bottom:  20px; text-align:  left !important;}.hustle-ui.hustle_module_id_13[data-id="13"] h2 span{display:  inline-block !important;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form input{display:  inline-block; padding:  .3rem .5rem;}.hustle-ui.hustle_module_id_13[data-id="13"] .mc4wp-form [type=submit]{font-size: 18px; border-radius:  0px 4px 4px 0px; padding:  10px 0;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-modal-message+.hustle-layout-footer{padding-top: 0;}

@media only screen and (max-width: 900px) { .hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-image.hustle-image-fit--cover{display: none;}.hustle-ui.hustle_module_id_13[data-id="13"] .hustle-layout .hustle-content{padding:  15px;} } 

@media only screen and (max-width: 400px){ .hustle-ui.hustle_module_id_13[data-id="13"] h2 span{font-size: 12px;} }</style>		
</body><!-- end body from header.php -->
	
</html>
