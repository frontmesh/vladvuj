#jQyert Page Effect plugin


	$.fn.pageEffect = (options) ->
		
		#default parameters for plugin options
		@defaults =
			element : "body"
			effect 	: "fadeIn"
			duration: 500
			delay: 100
			
		
		opts = $.extend {}, @defaults, options
		
		self = @
		
		public_methods =
			init: ()->
				self.css('opacity', 0)
									
				if opts.effect is "fadeIn"
					self.delay(opts.delay).animate({opacity:1}, opts.duration)
					
					
		
		
		@each ()->
			public_methods.init()
