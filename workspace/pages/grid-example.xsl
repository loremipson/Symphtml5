<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:include href="../utilities/base.xsl"/>

<xsl:template match="data">
	<style scoped="scoped">
		/* Styles only necessary to demonstrate the grid, remove these in development */
		.row li, .row div, .row article {
			color: #fff;
			line-height: 100px;
			background: #000;
			text-align: center;
			margin-top: 20px;
		}	
	</style>
	<xsl:comment>
		Grid Markup is very flexible and forgiving. Why? Well, because.. your code 
		*should* always be clean and semantic. Most grids clutter up your markup with 
		excessive div elements. I'm not here to tell you *how* to code, that's entirely
		up to you. I've just made it so that those who strive for semantics can still be
		satisfied with this grid.

		Below are a few different markup examples:
	</xsl:comment>
	<xsl:comment>Grid using an unordered list</xsl:comment>
	<ul class="row">
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
		<li class="grid1">One</li>
	</ul>
	<xsl:comment>Grid using html5 section/article</xsl:comment>
	<section class="row">
		<article class="grid2">Two columns</article>
		<article class="grid2">Two columns</article>
		<article class="grid2">Two columns</article>
		<article class="grid2">Two columns</article>
		<article class="grid2">Two columns</article>
		<article class="grid2">Two columns</article>
	</section>
	<xsl:comment>Grid using an ordered list</xsl:comment>
	<ol class="row">
		<li class="grid3">Three columns</li>
		<li class="grid3">Three columns</li>
		<li class="grid3">Three columns</li>
		<li class="grid3">Three columns</li>
	</ol>
	<xsl:comment>Grid using nested divs</xsl:comment>
	<div class="row">
		<div class="grid4">Four columns</div>
		<div class="grid4">Four columns</div>
		<div class="grid4">Four columns</div>
	</div>
	<div class="row">
		<div class="grid6">Six columns</div>
		<div class="grid6">Six columns</div>
	</div>
</xsl:template>

<xsl:template match="data" mode="styles">
	<xsl:comment>
		Using mode, you can apply page specific meta, styles, and javascript.
		These three examples, styles and javascript (loader/scripts below), demonstrate how to do that.
	</xsl:comment>
	<link rel="stylesheet" href="{$workspace}/assets/css/your-css-file.css"/>
</xsl:template>

<xsl:template match="data" mode="loader">
	<xsl:comment>
		You can load additional javascript files using the "loader" mode, just make sure
		it follows the headjs format, and is preceded by a comma. For example:
	</xsl:comment>
	{your-third-party-name: "<xsl:value-of select="$workspace"/>/assets/js/your-third-party-file.js"},
</xsl:template>

<xsl:template match="data" mode="scripts">
	$('#selector').each(function(){
		// Enter your js here
	});
</xsl:template>

</xsl:stylesheet>