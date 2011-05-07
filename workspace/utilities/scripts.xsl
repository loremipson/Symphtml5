<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="scripts">
	<script>
		head.js(
			{jquery: "http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js"},
			{formalize: "<xsl:value-of select="$workspace"/>/assets/js/formalize.js"},
			{analytics: "http://www.google-analytics.com/ga.js"}
		);
		
		head.ready("analytics", function() {
			var tracker = _gat._getTracker("UA-********-*");
			tracker._trackPageview();
		});
	</script>
</xsl:template>

</xsl:stylesheet>
