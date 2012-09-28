routes = (app) ->
    
    app.locals
        title: "Welcome to online portfolio of web developer Vladimir Vujosevic"
<<<<<<< HEAD
		menu : [
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
=======
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
>>>>>>> c5cfd5839a12050b22489d86b81083a0b17e5d66
				  
    
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