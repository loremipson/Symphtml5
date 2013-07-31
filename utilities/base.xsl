<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="page-title.xsl"/>
<xsl:import href="navigation.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes"/>

<xsl:template match="/">
<html lang="en" class="{$current-page}">
	<head>
		<meta charset="utf-8"/>
		<title><xsl:call-template name="page-title"/></title>
		<xsl:apply-templates mode="meta"/>
		<link rel="stylesheet" href="{$workspace}/public/styles/lib/normalize.css"/>
		<link rel="stylesheet" href="{$workspace}/public/styles/site.css"/>
		<xsl:apply-templates mode="styles"/>
	</head>
	<body>
		<header>
			<h1><a href="{$root}"><xsl:value-of select="$website-name"/></a></h1>
			<xsl:apply-templates select="data/navigation"/>
		</header>
		<main>
			<xsl:apply-templates/>
		</main>
		<footer>&#169; <xsl:value-of select="$this-year"/>&#160;<xsl:value-of select="$website-name"/></footer>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<xsl:apply-templates mode="loader"/>
		<script>
			<xsl:comment>
				<xsl:apply-templates mode="scripts"/>
			//</xsl:comment>
		</script>
	</body>
</html>
</xsl:template>

<xsl:template match="data" mode="meta"/>
<xsl:template match="data" mode="styles"/>
<xsl:template match="data" mode="loader"/>
<xsl:template match="data" mode="scripts"/>

</xsl:stylesheet>