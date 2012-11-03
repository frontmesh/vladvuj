express = require 'express'
stylus = require 'stylus'
assets = require 'connect-assets'
fp = require 'feedparser'

app = express()
# Add Connect Assets
app.use assets()
app.use express.static(process.cwd() + '/public')
app.use app.router


# Set View Engine
app.set 'view engine', 'jade'
# Get root_path return index view
app.get '/', (req, resp) -> 
  fp.parseUrl 'http://blog.vladvuj.com/atom.xml', (err, meta, articles)->
    return console.error(err) if err
    resp.render 'index', articles: articles
  
#Routes
require('./routes')(app)

#Helpers
require('./helpers')(app)



#404 page
app.get "*", (req, res)->
	#res.send('what???', 404)
	res.render '404' , title: "404 page"

# Define Port
port = process.env.PORT or process.env.VMC_APP_PORT or 4001
# Start Server
app.listen port, -> console.log "Listening on #{port}\nPress CTRL-C to stop server."