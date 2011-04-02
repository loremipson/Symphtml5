<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl"/>
<xsl:import href="navigation.xsl"/>
	
<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
<html lang="en" class="no-js">
<head>
	<title><xsl:call-template name="page-title"/></title>
	<meta name="description" content=""/>
	<meta name="author" content="{$root}/humans.txt"/>
	<script src="{$workspace}/assets/js/head.js"></script>
	<link rel="stylesheet" media="screen" href="{$workspace}/assets/css/site.css"/>
</head>
<body class="{$current-page}">
	<header>
		<h1><a href="{$root}"><xsl:value-of select="$website-name"/></a></h1>
		<xsl:apply-templates select="data/navigation"/>
	</header>
	<div id="main" class="clear">
		<xsl:apply-templates/>
	</div>
	<footer>&#169; <xsl:value-of select="$this-year"/>&#160;<xsl:value-of select="$website-name"/></footer>
	<script>
		head.js("http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js", "{$workspace}/assets/js/formalize.js", "http://www.google-analytics.com/ga.js", function() {		 
			var tracker = _gat._getTracker("UA-********-*");
			tracker._trackPageview();		 
		});
	</script>
</body>
</html>
</xsl:template>

</xsl:stylesheet>
