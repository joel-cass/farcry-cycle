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
<div class="slide" style="background:##000000 url(#replace(stObj.Image,' ','%20','all')#) 50% 50% no-repeat;">
	<div class="slide-background">&nbsp;</div>
	<div class="slide-description">
		<h3>#stObj.title#</h3>
		<p>#stObj.description#</p>
	</div>
	<cfif len(strURL)><a href="#strURL#" target="#strTarget#"></cfif>
		<img src="/farcry/plugins/slideshow/assets/images/spacer.gif" alt="#stObj.title#" class="slide-overlay" />
	<cfif len(strURL)></a></cfif>
</div>
</cfoutput>

<cfsetting enablecfoutputonly="false" />