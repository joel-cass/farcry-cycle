<cfsetting enablecfoutputonly="true">

<cfimport taglib="/farcry/core/tags/formtools" prefix="ft" />
<cfimport taglib="/farcry/core/tags/admin/" prefix="admin" />

<!--- set up page header --->
<admin:header title="Slides" />

<ft:objectAdmin
	title="Slides"
	typename="jcSlide"
	ColumnList="title,image"
	SortableColumns=""
	lFilterFields=""
	sqlorderby="" />

<admin:footer />

<cfsetting enablecfoutputonly="no">
