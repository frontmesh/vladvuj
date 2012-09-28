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
<<<<<<< HEAD
						
				if opts.effect is "fadeIn"
					self.css('opacity', 0)		
					self.delay(opts.delay).animate({opacity: 1 }, opts.duration)
=======
				self.css('opacity', 0)
									
				if opts.effect is "fadeIn"
					self.delay(opts.delay).animate({opacity:1}, opts.duration)
>>>>>>> c5cfd5839a12050b22489d86b81083a0b17e5d66
					
					
		
		
		@each ()->
			public_methods.init()
