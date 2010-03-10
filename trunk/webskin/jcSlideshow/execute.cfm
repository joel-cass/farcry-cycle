<cfsetting enablecfoutputonly="true" />

<cfimport taglib="/farcry/core/tags/webskin" prefix="skin" />

<cfparam name="REQUEST.slideshowIndex" default="0" />
<cfset REQUEST.slideshowIndex = REQUEST.slideshowIndex + 1 />

<cfparam name="stObj.bShowNavigation" type="boolean" default="false">
<cfparam name="stObj.bShowDescription" type="boolean" default="false">

<cfsavecontent variable="strHeader">
	<cfoutput>
	<!-- START SLIDESHOW HEADER -->
	<cfif REQUEST.slideshowIndex EQ 1>
	<script type="text/javascript" src="/farcry/plugins/slideshow/assets/js/jquery-1.3.2.min.js"></script>
	<script type="text/javascript" src="/farcry/plugins/slideshow/assets/js/jquery.cycle.all.min.js"></script>
	<link rel="STYLESHEET" type="text/css" href="/farcry/plugins/slideshow/assets/css/slideshow.css" />
	</cfif>
	<style type="text/css">
		##slideshow-#REQUEST.slideshowIndex# {
			width:#stObj.width#px;
			height:#stObj.height#px;
		}
		##slideshow-#REQUEST.slideshowIndex# div {
			width:#stObj.width#px;
		}
		##slideshow-#REQUEST.slideshowIndex# div.slide {
			height:#stObj.height#px;
		}
		##slideshow-#REQUEST.slideshowIndex# .slide-overlay {
			width:#stObj.width#px;
			height:#stObj.height#px;
		}
		<cfif NOT stObj.bShowNavigation>
			##slideshow-#REQUEST.slideshowIndex# .slideshow-controls { display:none; }
		</cfif>
		<cfif NOT stObj.bShowDescription>
			##slideshow-#REQUEST.slideshowIndex# .slide-description { display:none; }
			##slideshow-#REQUEST.slideshowIndex# .slide-background { display:none; }
		</cfif>
	</style>
	<script type="text/javascript">
		jQuery.noConflict();
		jQuery("##slideshow-#REQUEST.slideshowIndex# .slides")
			.cycle({
				fx:"#stObj.transition#",
				timeout:#round(stObj.delay)#,
				cleartypeNoBg:true,
				pager:"##slideshow-#REQUEST.slideshowIndex#-controls"
			});
	</script>
	<!-- END SLIDESHOW HEADER -->
	</cfoutput>
</cfsavecontent>

<cfhtmlhead text="#strHeader#" />

<cfoutput><div class="minheight">&nbsp;</div></cfoutput>

<cfoutput><div id="slideshow-#REQUEST.slideshowIndex#" class="slideshow-container"></cfoutput>

	<cfoutput><div class="slides"></cfoutput>

	<cfloop from="1" to="#arraylen(stObj.aSlides)#" index="i">
		<skin:view objectid="#stObj.aSlides[i]#" typename="jcSlide" webskin="displaySlide" />
	</cfloop>

	<cfoutput></div></cfoutput>

	<cfoutput><div id="slideshow-#REQUEST.slideshowIndex#-controls" class="slideshow-controls"></div></cfoutput>

<cfoutput></div></cfoutput>

<cfsetting enablecfoutputonly="false" />