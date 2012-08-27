class window.App
	constructor: ()->
		@_checkLib()
	
	NAMESPACE: "vladvuj namespace"
	VERSION: "0.1"
	_checkLib: () ->
		throw new Error("You need jQuery library") unless window.jQuery
		true
	mergeObjects: (newobj, finalobj) ->
		for i of newobj
			finalobj[i] = newobj[i]  if newobj.hasOwnProperty(i)
		finalobj
	replaceURL : (text) ->
		exp = /(\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|!:,.;]*[-A-Z0-9+&@#\/%=~_|])/g
		text.replace exp, "<a href='$1'>$1</a>"
	randomSort	: (a, b) ->
		# Get a random number between 0 and 10
		temp = parseInt(Math.random() * 10)
		# Get 1 or 0, whether temp is odd or even
		isOddOrEven = temp % 2
		# Get +1 or -1, whether temp greater or smaller than 5
		isPosOrNeg = (if temp > 2 then 1 else -1)
		# Return -1, 0, or +1
		isOddOrEven * isPosOrNeg
		
		
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
		
	
	