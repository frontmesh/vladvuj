routes = (app) ->
    
    app.locals
        title: "Welcome to online portfolio of web developer Vladimir Vujosevic"
        menu : 
			[
				text: "stream"
				url: "/stream"
			  ,
				text: "work"
				url: "/work"
			  ,
				text: "about"
				url: "/about"
			  ,
				text: "contact"
				url: "/contact"
			  ,
				text: "blog"
				url: "http://frontmesh.heroku.com"
			]
				  
    
    app.get '/stream', (req,res) ->
        res.render "stream",
            title: 'it\'s the stream'
    
    app.get '/work', (req,res) ->
        res.render "work",
            title: 'it\'s my work'
    
    app.get '/about', (req,res) ->
        res.render "about",
            title: 'it\'s about me page'
    
    app.get '/contact', (req,res) ->
        res.render "contact",
            title: 'it\'s contact me page'
    
    
    
    
    
    


module.exports = routes