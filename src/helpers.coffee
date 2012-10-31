helpers = (app) ->
  urls = []
  for link in app.locals.menu
    urls.push link.url
  
  app.generate_xml_sitemap = (urls)->
    urls = urls || ["about.html", "javascript.html", "css.html", "html5.html"]
    root_path = "http://www.vladvuj.com"
    
    priority = 0.5
    freq = "monthly"
    xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">"
    for i of urls 
      xml += "<url>"
      xml += "<loc>" + root_path + urls[i] + "</loc>"
      xml += "<changefreq>" + freq + "</changefreq>"
      xml += "<priority>" + priority + "</priority>"
      xml += "</url>"
      i++
    
    xml += "</urlset>"
    xml

  #sitemap
  app.get "/sitemap.xml", (req, res)->
    sitemap = app.generate_xml_sitemap(urls)
    res.header 'Content-Type', 'text/xml'
    res.send sitemap

module.exports = helpers