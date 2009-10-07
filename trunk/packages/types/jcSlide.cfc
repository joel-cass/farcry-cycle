<cfcomponent output="false" extends="farcry.core.packages.types.types" 
		displayname="Slide" hint="Slides for use in the Slideshow rule">

	<!--- PROPERTIES --->

	<!--- title --->
	<cfproperty ftseq="1" ftfieldset="General Details" type="string" name="title" 
				ftLabel="Title">
	<!--- description --->
	<cfproperty ftseq="2" ftfieldset="General Details" type="string" name="description" 
				ftLabel="Description" ftType="textarea">

	<!--- image --->
	<cfproperty ftseq="3" ftfieldset="General Details" type="string" name="image"
				ftlabel="Image" fttype="image" ftdestination="/images/slideshow"
				ftImageWidth="800" ftImageHeight="" />

	<!--- url --->
	<cfproperty ftSeq="10" ftFieldSet="Link" type="string" name="InternalLink" 
				ftType="list" ftLabel="Link to Page" ftListData="getExternalLinks" />
	<cfproperty ftSeq="11" ftFieldSet="Link" type="string" name="ExternalLink" 
				ftType="string" ftLabel="Link to URL" />

	<!--- open in new window --->
	<cfproperty ftseq="15" ftFieldSet="Link" type="numeric" name="bNewWindow" 
				ftLabel="Open in new Window?" ftType="list" ftList="1:Yes,0:No">

	<!--- PUBLIC METHODS --->

	<cffunction name="getExternalLinks" access="public" returntype="query" output="false" hint="Returns a list of all navigation nodes in the system with an alias">
	
		<cfset var oNav = createObject("component", application.stcoapi["dmNavigation"].packagePath) />
		<cfset var i = "" />
		<cfset var j = "" />
		<cfset var q = queryNew("value,name") />
		
		<cfset queryaddrow(q,1) />
		<cfset querysetcell(q, "value", "") />
		<cfset querysetcell(q, "name", "#application.rb.getResource('coapi.dmNavigation.properties.externallink@nooptions','-- None --')#") />
		
		<cfloop collection="#application.navid#" item="i">
			<cfloop list="#application.navid[i]#" index="j">
				<cfset stNav = oNav.getData(objectid="#j#") />
				<cfset queryaddrow(q,1) />
				<cfset querysetcell(q, "value", j) />
				<cfset querysetcell(q, "name", "#stNav.title# (#i#)") />	
			</cfloop>		
		</cfloop>
		
		<cfquery dbtype="query" name="q">
		SELECT *
		FROM q
		ORDER BY name
		</cfquery>

		<cfreturn q />
	</cffunction>

</cfcomponent>