routes = (app) ->
    
  app.locals
    title: "Welcome to online portfolio of web developer Vladimir Vujosevic", 
    menu : [{ text: "stream", url: "/stream"},{ text: "work", url: "/work" },{ text: "about", url: "/about" },{ text: "contact", url: "/contact" },{ text: "blog", url: "http://blog.vladvuj.com" }]
				  
    
  app.get '/stream', (req,res) ->
      res.render "stream",
          title: 'It\'s the stream'
  
  app.get '/work', (req,res) ->
      res.render "work",
          title: 'It\'s my work'
  
  app.get '/about', (req,res) ->
      res.render "about",
          title: 'It\'s about me page'
  
  app.get '/contact', (req,res) ->
      res.render "contact",
          title: 'it\'s contact me page'
  
    
    
 
    


module.exports = routes