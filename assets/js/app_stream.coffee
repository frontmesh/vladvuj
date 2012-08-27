class Stream extends App
	constructor: () ->
		true
	status: 
		all: false
		services: 
			twitter: false
			lastfm: false
		check:(service) ->
			for rt of @services
				@all = (if (not @services[rt]) then false else true)
			#if @all
		