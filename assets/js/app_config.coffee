class AppConfig
			
	# stream collection url
    URL_YOUTUBE                 : "http://gdata.youtube.com/feeds/api/videos?alt=json-in-script&author={USER_ID}&orderby=published&start-index=1&max-results={MAX_RESULTS}&callback=?"
    URL_TWITTER                 : "https://api.twitter.com/1/statuses/user_timeline.json?include_entities=false&include_rts=false&exclude_replies=true&trim_user=false&contributor_details=false&screen_name={USER_ID}&count={MAX_RESULTS}&callback=?"
    URL_GITHUB                  : "https://github.com/{USER_ID}.json?&callback=?"
    URL_FLICKR                  : "http://api.flickr.com/services/feeds/photos_public.gne?id={USER_ID}&lang=en-us&format=json&callback=?"
	# Stream user ID
	ID_TWITTER					: "frontmesh"
	ID_LASTFM					: "vladbc"
	ID_GITHUB					: "frontmesh"
	ID_INSTAGRAM				: "vladbc"
	ID_GPLUS					: "vladimirvuj"
	# stream max result
	#MAX_RESULTS_INSTAGRAM	    : 9 # 10
    #MAX_RESULTS_TWITTER         : 6 # 10
    #MAX_RESULTS_GITHUB          : 6 # 10
    #MAX_RESULTS_LASTFM	        : 10 #ads
    #MAX_RESULTS_GPLUS           : 6 # 10
	
	