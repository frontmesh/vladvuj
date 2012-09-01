#jQyert Page Effect plugin


	$.fn.pageEffect = (options) ->
		
		#default parameters for plugin options
		@defaults =
			element : "body"
			effect 	: "fadeIn"
			duration: 100
			
		
		opts = $.extend {}, @defaults, options
		
		console.log opts
	
