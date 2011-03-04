<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="navigation">
	<nav id="navigation">
		<ul class="clear">
			<xsl:apply-templates select="page[not(types/type = 'hidden') and not(types/type = 'admin')]"/>
		</ul>
	</nav>
</xsl:template>

<xsl:template match="page">
	<li>
		<xsl:if test="@handle = $root-page">
			<xsl:attribute name="class">active</xsl:attribute>
		</xsl:if>
		<a href="{$root}/{@handle}/"><xsl:value-of select="name"/></a>
	</li>
</xsl:template>

</xsl:stylesheet>