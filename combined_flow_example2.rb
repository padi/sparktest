#!/usr/bin/env ruby
require "rubygems"

require 'json'
require 'spark_api'

SparkApi.logger.info("Hello!")

SparkApi.configure do |config|
  config.authentication_mode = SparkApi::Authentication::OpenIdOAuth2Hybrid
  config.api_key      = "e8cd72745paowh67h1lygapif"
  config.api_secret   = "2d692kqxipv0o9yxovyp6s98b"
  config.callback     = "https://sparkplatform.com/oauth2/callback"
  config.auth_endpoint = "https://sparkplatform.com/openid"
  config.endpoint   = 'https://developers.sparkapi.com'

end

client = SparkApi.client


# Step 1:
# To get your code to post to /v1/oauth2/grant, send the end user to this URI, replacing the all-capped strings with
# the CGI-escaped credentials for your key:
# https://developers.sparkplatform.com/oauth2?response_type=code&client_id=e8cd72745paowh67h1lygapif&redirect_uri=https://sparkplatform.com/oauth2/callback
# When the user has finished, they will land at:
# YOUR_REDIRECT_URI?code=CODE.
puts "Go here and log in to get your code: #{client.authenticator.authorization_url}"
# 634rlusolmg5siofth15f43n4

# Step 2: Uncomment the following, and add your code in place of CODE_FROM_ABOVE_URI
#         Hold on to the tokens.  Unless you lose them, you can now pass in these
#         values until the access_token expires.

#client.oauth2_provider.code = "44c9gjillg8x9i61ycl8mk6z6"

#client.get '/my/account'
##client.authenticate
#puts "Access Token: #{client.session.access_token}, Refresh Token: #{client.session.refresh_token}"

#exit

# Step 3: Comment out Step 2, and uncomment the following.
#         Pass in your access_token and refresh_token to make authenticated requests to the API
client.session = SparkApi::Authentication::OAuthSession.new "access_token"=> "3s6fybxzkra3ugyya6lumsoqu",
                    "refresh_token" => "3di1qg49tzmxcmygch0x8tkgy", "expires_in" => 86400

#SparkApi.client.session = SparkApi::Authentication::OAuthSession.new "access_token"=> "ahpioac5k01xsf5m5swz9bx97", "refresh_token" => "5goswuvlch84u54wgfe85oanf", "expires_in" => 86400

# Step 2a and 3a: Uncomment with Step 3 and 4.
#                 Make requests for authorized listing data
#list = client.get '/contacts'
#puts "client: #{list.inspect}"
#list = SparkApi::Models::Contact.get
#puts "model: #{list.inspect}"

#puts client.session.inspect
# Step 5?: Refresh steps, to refresh the tokens, uncomment and set the client.oauth2_provider.code from
# step 2 to a string, and set the "expires_in" attribute in step three to 0 (expired). This will
# force the client to perform the refresh_token grant.
# NOTE: keep in mind that the access token and refresh tokens will change each time this step is called

#client.oauth2_provider.code = "This value won't matter"
#client.session = SparkApi::Authentication::OAuthSession.new "access_token"=> "8coyzf871hby649jbgdgnxjuy", "refresh_token" => "4bcmg6l1b1930jdhygozexs0y", "expires_in" => 0
puts "MY CLIENTS: #{client.get('/my/account').inspect}"
puts "MY CONTACTS: #{client.get('/contacts').inspect}"

puts "REFRESHED Access Token: #{client.session.access_token}, Refresh Token: #{client.session.refresh_token}"
