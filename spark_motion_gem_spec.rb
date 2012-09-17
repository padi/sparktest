require 'json'
require 'spark_api'

# OAuth only
SparkMotion.configure do |config|
  config.authentication_mode = SparkApi::OAuth2 # no other mode for now
  config.api_key      = "e8cd72745paowh67h1lygapif"
  config.api_secret   = "2d692kqxipv0o9yxovyp6s98b"
  config.callback     = "https://sparkplatform.com/oauth2/callback"
  config.auth_endpoint = "https://sparkplatform.com/oauth2" # different for hybrid
  config.endpoint   = 'https://developers.sparkapi.com'
end

client = SparkMotion.client
# give the code for authentication post request
client.oauth2_provider.access_code = "839nvau34nrh4qab8chbpp8k"
client.authenticate # authentication post request
client.get '/my/account'

# Step 1: launch the browser to client.authenticator.authorization_url; it will redirect
# using the redirect_uri together with a `code` param. `code` will be used to get the
# authentication token and the refresh token for API access

# example: this line of code opens Safari to google.com
# UIApplication.sharedApplication.openURL NSURL.URLWithString "http://google.com"

# default uri callback
# url = https://sparkplatform.com/oauth2?response_type=code&client_id=e8cd72745paowh67h1lygapif&redirect_uri=https://sparkplatform.com/oauth2/callback

# custom uri callback for ios apps
url = "https://sparkplatform.com/oauth2?response_type=code&client_id=e8cd72745paowh67h1lygapif&redirect_uri=sparkapp://"

# http://sparkplatform.com/docs/api_services/read_first
# http://stackoverflow.com/questions/4809047/nsurlrequest-setting-the-http-header
# NSMutableURLRequest* request = [[[NSMutableURLRequest alloc] initWithURL:url]
#                                 autorelease];

# # to set an existing value:
# [request setValue:VALUE forHTTPHeaderField:@"Field You Want To Set"];
# # to add a new value:
# [request addValue:VALUE forHTTPHeaderField:@"Field You Want To Set"];
request = NSMutableURLRequest.alloc.initWithURL(url).autorelease
request.setValue "SparkMotion RubyMotion Gem v 0.1.0" valueForHTTPHeaderField: "User-Agent"
request.setValue "Sample RubyMotion App" valueForHTTPHeaderField: "X-SparkApi-User-Agent"

# url = "#{self.auth_endpoint}?response_type=code&client_id=#{self.api_key}&redirect_uri=#{self.callback}"
def self.direct_to_url url
  UIApplication.sharedApplication.openURL NSURL.URLWithString url
end

# Step 2: set code and get auth token and refresh token

client.code = "839nvau34nrh4qab8chbpp8k"
client.authenticate
client.get '/listings'

# Step 3: client.<http action> should be able to authenticate and refresh on it's own