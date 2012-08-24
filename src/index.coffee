express = require 'express'
stylus = require 'stylus'
assets = require 'connect-assets'

app = express()
# Add Connect Assets
app.use assets()
app.use express.static(__dirname + "/public")

# Set View Engine
app.set 'view engine', 'jade'
# Get root_path return index view
app.get '/', (req, resp) -> 
  resp.render 'index'

# Define Port
port = process.env.PORT or process.env.VMC_APP_PORT or 4000
# Start Server
app.listen port, -> console.log "Listening on #{port}\nPress CTRL-C to stop server."