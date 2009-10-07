<cfcomponent displayname="Slideshow" extends="farcry.core.packages.rules.rules" hint="Displays an animated slideshow">

	<cfproperty ftseq="1" ftfieldset="Slideshow" type="string" name="transition" 
				ftLabel="Transition" ftType="list" default="fade" ftList="blindX,blindY,blindZ,cover,curtainX,curtainY,fade,fadeZoom,growX,growY,none,scrollUp,scrollDown,scrollLeft,scrollRight,scrollHorz,scrollVert,shuffle,slideX,slideY,toss,turnUp,turnDown,turnLeft,turnRight,uncover,wipe,zoom">

	<cfproperty ftseq="2" ftfieldset="Slideshow" type="numeric" name="delay" 
				ftLabel="Delay between slides (milliseconds)" default="2500">

	<cfproperty ftseq="5" ftfieldset="Dimensions" type="numeric" name="width" 
				ftLabel="Width (pixels)" default="800">

	<cfproperty ftseq="6" ftfieldset="Dimensions" type="numeric" name="height" 
				ftLabel="Height (pixels)" default="220">

	<cfproperty ftSeq="10" ftFieldSet="Slides" name="aSlides" type="array" 
				ftJoin="jcSlide" ftLabel="Select Slides" />
	
</cfcomponent>