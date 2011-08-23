head.ready(function(){
	// Padding on grid elements for IE7, since it doesn't support box-sizing
	$('.lt-ie8 .row .pad').each(function(){
		$(this).wrapInner('<div class="padding"/>');
	});
});