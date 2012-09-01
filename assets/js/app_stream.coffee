class App.Stream extends App

	constructor: (service_array) ->
		
		for service of service_array
			service_array[service]()
		
		
	services: null
	
	statusCheck: (services) ->
		all = false
		for rt of @services
			@all = (if (not @services[rt]) then false else true)
		#if @all
	
	relativeTime: (time_value) ->
		relative_to = (if (arguments_.length > 1) then arguments_[1] else new Date())
		delta = parseInt(time_value / 1000)
		delta = delta + (relative_to.getTimezoneOffset() * 60)
		r = ""
		if delta < 60
		  r = "a minute ago"
		else if delta < 120
		  r = "couple of minutes ago"
		else if delta < (55 * 60)
		  r = (parseInt(delta / 60)).toString() + " minutes ago"
		else if delta < (90 * 60)
		  r = "an hour ago"
		else if delta < (24 * 60 * 60)
		  hours = (parseInt(delta / 3600)).toString()
		  r = (if (parseInt(hours) is 1) then "" + hours + " hour ago" else "" + hours + " hours ago")
		else if delta < (48 * 60 * 60)
		  r = "1 day ago"
		else
		  r = (parseInt(delta / 86400)).toString() + " days ago"
		r
	
	

stream = new App.Stream()
	