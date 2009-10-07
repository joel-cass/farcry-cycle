<cfsetting enablecfoutputonly="true" />

<cfif stObj.InternalLink NEQ "">
	<cfif isDefined("application.fc.factory.farFU")>
		<cfset strURL = application.fc.factory.farFU.getFU(stObj.InternalLink)>
	<cfelse>
		<cfset strURL = "/?objectid=#stObj.InternalLink#">
	</cfif>
<cfelse>
	<cfset strURL = stObj.ExternalLink>
</cfif>

<cfif stObj.bNewWindow EQ true>
	<cfset strTarget = "_blank">
<cfelse>
	<cfset strTarget = "_self">
</cfif>

<cfoutput>
<div class="slide" style="background:##000000 url(#stObj.Image#) 0 50% no-repeat;">
	<div class="slide-background">&nbsp;</div>
	<div class="slide-description">
		<h3>#stObj.title#</h3>
		<p>#stObj.description#</p>
	</div>
	<a href="#strURL#" target="#strTarget#">
		<img src="/farcry/plugins/slideshow/assets/images/spacer.gif" alt="#stObj.title#" class="slide-overlay" />
	</a>
</div>
</cfoutput>

<cfsetting enablecfoutputonly="false" />