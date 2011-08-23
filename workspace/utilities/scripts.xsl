<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="scripts">
	<script>
		head.js(
			{jquery: "http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"},
			{site: "<xsl:value-of select="$workspace"/>/assets/js/site.js"},
			{analytics: "http://www.google-analytics.com/ga.js"}
		);
		head.ready(function(){
			window._gaq = [['_setAccount','UA-XXXXX-X'],['_trackPageview'],['_trackPageLoadTime']];
		});
	</script>
</xsl:template>

</xsl:stylesheet>
