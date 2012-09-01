#jQyert Page Effect plugin


	$.fn.pageEffect = (options) ->
		
		#default parameters for plugin options
		@defaults =
			element : "body"
			effect 	: "fadeIn"
			duration: 100
			delay: 100
			
		
		opts = $.extend {}, @defaults, options
		
		self = @
		
		public_methods =
			init: ()->
				self.hide()
									
				if opts.effect is "fadeIn"
					self.delay(opts.delay).fadeIn("slow")
					
					
		
		
		@each ()->
			public_methods.init()
