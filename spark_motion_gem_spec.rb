require 'json'
require 'spark_api'

# OAuth only
SparkApi.configure do |config|
  config.authentication_mode = SparkApi::Authentication::OAuth2
  config.api_key      = "e8cd72745paowh67h1lygapif"
  config.api_secret   = "2d692kqxipv0o9yxovyp6s98b"
  config.callback     = "https://sparkplatform.com/oauth2/callback"
  config.auth_endpoint = "https://developers.sparkplatform.com/oauth2" # different for hybrid
  config.endpoint   = 'https://developers.sparkapi.com'
end

client = SparkApi.client


class MotionSpark
  def

  end
end

# Step 1: launch the browser to client.authenticator.authorization_url; it will redirect
# using the redirect_uri together with a `code` param. `code` will be used to get the
# authentication token and the refresh token for API access

https://developers.sparkplatform.com/oauth2?response_type=code&client_id=e8cd72745paowh67h1lygapif&redirect_uri=https://sparkplatform.com/oauth2/callback

# Step 2: set code and get auth token and refresh token

client.code = "839nvau34nrh4qab8chbpp8k"
client.authenticate
client.get '/listings'

# Step 3: client.<http action> should be able to authenticate and refresh on it's own