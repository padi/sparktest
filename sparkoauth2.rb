# initialize the gem with your OAuth 2 key/secret.
# See also: script/oauth2_example.rb
# api_key, api_secret, and callback are all required.
# The following options are required:
#  - api_key: Your OAuth 2 client key
#  - api_secret: Your OAuth 2 client secret
#  - callback: Your OAuth 2 redirect_uri, which the end user will be redirected
#              to after authorizing your application to access their data.
#  - auth_endpoint: The URI to redirect the user's web browser to, in order for them to
#                   authorize your application to access their data.
# other options and their defaults:
#  - endpoint:   'https://api.sparkapi.com'
#  - version:    'v1'
#  - ssl:        true
#  - user_agent: 'Spark API Ruby Gem'
#

require 'json'
require 'spark_api'

SparkApi.configure do |config|
  config.authentication_mode = SparkApi::Authentication::OAuth2
  config.api_key      = "e8cd72745paowh67h1lygapif"
  config.api_secret   = "2d692kqxipv0o9yxovyp6s98b"
  config.callback     = "https://sparkplatform.com/oauth2/callback"
  config.auth_endpoint = "https://developers.sparkplatform.com/oauth2"
  #config.auth_endpoint = "https://sparkplatform.com/oauth2"
  config.endpoint   = 'https://developers.sparkapi.com'
end


# OAuth only
SparkApi.configure do |config|
  config.authentication_mode = SparkApi::Authentication::OAuth2
  config.api_key      = "e8cd72745paowh67h1lygapif"
  config.api_secret   = "2d692kqxipv0o9yxovyp6s98b"
  config.callback     = "https://sparkplatform.com/oauth2/callback"
  config.auth_endpoint = "https://developers.sparkplatform.com/oauth2"
  config.endpoint   = 'https://developers.sparkapi.com'
end

client = SparkApi.client

# Code is retrieved from the method. SparkApi.client.authenticator.authorization_url
# See script/oauth2_example.rb for more details.


puts "go here to get your most recent oauth2_provider.code: #{SparkApi.client.authenticator.authorization_url}"

SparkApi.client.oauth2_provider.code = "lwpmmkn6eu12jfb6vlsvbrl8"
SparkApi.client.authenticate

# Alternatively, if you've already received an access token, you may
# do the following instead of the above two lines:
#SparkApi.client.session = SparkApi::Authentication::OAuthSession.new "access_token"=> "ACCESS_TOKEN",
#                           "refresh_token" => "REFRESH_TOKEN", "expires_in" => 86400

# mixin the models so you can use them without prefix
#include SparkApi::Models

# Grab your listings!
#my_listings = Listing.my()
