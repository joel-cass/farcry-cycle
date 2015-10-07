<p>This is a plugin that I have created for the <a href='http://www.farcrycore.org/'>Far Cry content management system</a> that leverages the <a href='http://malsup.com/jquery/cycle/'>cycle jQuery plugin</a>.</p>
<p>This plugin is intended for Far Cry 5.1 but may work on earlier versions</p>
<h3>The plugin installation is simple:</h3>
<ol>
<li>Create the folder "slideshow" beneath the plugins directory of your project, e.g. "/farcry/plugins/slideshow"</li>
<li>Checkout project from <a href='http://farcry-cycle.googlecode.com/svn/trunk/'>http://farcry-cycle.googlecode.com/svn/trunk/</a> to the folder created above. There should be folders "assets", "customadmin", "config" etc in this directory.</li>
<li>Open the /farcryConstructor.cfm file in the webroot. Add "slideshow" to THIS.plugins, e.g <code>&lt;cfset THIS.plugins = "farcrycms,farcrygreybox,slideshow" /&gt;</code></li>
<li>Restart the application</li>
<li>Log in to farcry, go to the 'Admin' tab, then select 'Developer Utilities' from the select box on the left.</li>
<li>Click 'Types', find the type 'jcSlide' and click 'deploy'</li>
<li>Click 'Rules', find the rule 'jcSlideshow' and click 'deploy'</li>
</ol>
<h3>Slideshows are set up on each page using rules:</h3>
<ol>
<li>View site as a logged in user, enable rules</li>
<li>Find a container, click 'add rule'</li>
<li>Select 'Slideshow', and click 'Add'</li>
<li>Configure the rule:<br>
<ul>
<li><strong>Transition</strong>: a wide variety of effects are listed. Play around and find a good one.</li>
<li><strong>Width, Height</strong>: the dimensions. Note that the slideshow will be centred using CSS if it is narrower than the page width. Modify the CSS in the "assets/css/slideshow.css" file if you wish to remove the centering.</li>
<li><strong>Slides</strong>: Add the slides. This is a simple library control.</li>
</ul>
</li>
<li>Save the rule. Things may appear broken. If so, reload the page. You should then see that the slideshow is working</li>
</ol>
<h3>Each slide has the following properties:</h3>
<ul>
<li><strong>Title</strong>: enter a title for the slide</li>
<li><strong>Description</strong>: enter a description for the slide</li>
<li><strong>Image</strong>: Upload an image.</li>
<li><strong>Internal link</strong>: a dropdown list to link to a page in the current site, mutually exclusive with external link</li>
<li><strong>External link</strong>: enter an external link. A protocol needs to be specified, e.g. http://, mailto: etc</li>
<li><strong>Open link in new window</strong>: if set to "yes", links will open in a new window.</li>
</ul>