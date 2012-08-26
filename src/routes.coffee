routes = (app) ->
    
    app.locals
        title: "Welcome to online portfolio of web developer Vladimir Vujosevic"
        menu : ["stream", "work", "about", "contact", "blog"]
        
    
    app.get '/stream', (req,res) ->
        res.render "stream",
            title: 'it\'s the stream'
    
    
    
    
    
    


module.exports = routes