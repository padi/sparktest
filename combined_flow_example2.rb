#!/usr/bin/env ruby
require "rubygems"

require 'json'
require 'spark_api'

SparkApi.logger.info("Hello!")

# OAuth OpenId Hybrid auth
# SparkApi.configure do |config|
#   config.authentication_mode = SparkApi::Authentication::OpenIdOAuth2Hybrid
#   config.api_key      = "e8cd72745paowh67h1lygapif"
#   config.api_secret   = "2d692kqxipv0o9yxovyp6s98b"
#   config.callback     = "https://sparkplatform.com/oauth2/callback"
#   config.auth_endpoint = "https://sparkplatform.com/openid"
#   config.endpoint   = 'https://developers.sparkapi.com'
# end

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


# Step 1:
# To get your code to post to /v1/oauth2/grant, send the end user to this URI, replacing the all-capped strings with
# the CGI-escaped credentials for your key:
https://developers.sparkplatform.com/oauth2?response_type=code&client_id=e8cd72745paowh67h1lygapif&redirect_uri=https://sparkplatform.com/oauth2/callback
# When the user has finished, they will land at:
# YOUR_REDIRECT_URI?code=CODE.



####################################################################################################
# https://github.com/nxtbgthng/OAuth2Client
# http://sparkplatform.com/docs/authentication/oauth2_authentication
# token url (i think):

# Setup step
NXOAuth2AccountStore.sharedStore.setClientID "e8cd72745paowh67h1lygapif", secret:"2d692kqxipv0o9yxovyp6s98b", authorizationURL:"d33sznrjpffz46piq7gylfe61", tokenURL:"https://api.sparkapi.com/v1/oauth2/grant", redirectURL:"https://github.com/nxtbgthng/OAuth2Client", forAccountType:"authorization_code"
####################################################################################################











puts "Go here and log in to get your code: #{client.authenticator.authorization_url}"
# 634rlusolmg5siofth15f43n4

# Step 2: Uncomment the following, and add your code in place of CODE_FROM_ABOVE_URI
#         Hold on to the tokens.  Unless you lose them, you can now pass in these
#         values until the access_token expires.

client.oauth2_provider.code = "839nvau34nrh4qab8chbpp8k"

# unless authenticated, client.get will call client.authenticate anyway
client.get '/my/account'
# if don't want to request for anything yet...
client.authenticate
puts "Access Token: #{client.session.access_token}, Refresh Token: #{client.session.refresh_token}"

#exit

# Step 3: Comment out Step 2, and uncomment the following.
#         Pass in your access_token and refresh_token to make authenticated requests to the API
#client.session = SparkApi::Authentication::OAuthSession.new "access_token"=> "3s6fybxzkra3ugyya6lumsoqu", "refresh_token" => "3di1qg49tzmxcmygch0x8tkgy", "expires_in" => 86400

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
#puts "MY CLIENTS: #{client.get('/my/account').inspect}"
#puts "MY CONTACTS: #{client.get('/contacts').inspect}"

#puts "REFRESHED Access Token: #{client.session.access_token}, Refresh Token: #{client.session.refresh_token}"







# Search
# std_fields = client.get '/standardfields'
# values = []
# std_fields.first.each { |k, v| values << v["ResourceUri"]}
 #["/v1/standardfields/MLSAreaMinor",
 #"/v1/standardfields/StreetSuffix",
 #"/v1/standardfields/StreetNumber",
 #"/v1/standardfields/Longitude",
 #"/v1/standardfields/City",
 #"/v1/standardfields/ListingId",
 #"/v1/standardfields/CoListAgentId",
 #"/v1/standardfields/ListAgentId",
 #"/v1/standardfields/PublicRemarks",
 #"/v1/standardfields/BuildingAreaTotal",
 #"/v1/standardfields/YearBuilt",
 #"/v1/standardfields/StreetName",
 #"/v1/standardfields/CoListOfficeId",
 #"/v1/standardfields/ListOfficeId",
 #"/v1/standardfields/WithdrawDate",
 #"/v1/standardfields/SubdivisionName",
 #"/v1/standardfields/ListPrice",
 #"/v1/standardfields/PostalCode",
 #"/v1/standardfields/BuyerAgentId",
 #"/v1/standardfields/Latitude",
 #"/v1/standardfields/BathsThreeQuarter",
 #"/v1/standardfields/MlsId",
 #"/v1/standardfields/BathsFull",
 #"/v1/standardfields/BathsTotal",
 #"/v1/standardfields/StateOrProvince",
 #"/v1/standardfields/PropertyType",
 #"/v1/standardfields/StreetAdditionalInfo",
 #"/v1/standardfields/StreetDirPrefix",
 #"/v1/standardfields/MlsStatusInformation",
 #"/v1/standardfields/CloseDate",
 #"/v1/standardfields/BedsTotal",
 #"/v1/standardfields/StreetDirSuffix",
 #"/v1/standardfields/PendingDate",
 #"/v1/standardfields/CoBuyerAgentId",
 #"/v1/standardfields/ListingKey",
 #"/v1/standardfields/BathsHalf",
 #"/v1/standardfields/ClosePrice",
 #"/v1/standardfields/MlsStatus",
 #"/v1/standardfields/ModificationTimestamp",
 #"/v1/standardfields/CancelDate",
 #"/v1/standardfields/PrivateRemarks",
 #"/v1/standardfields/PropertySubType",
 #"/v1/standardfields/CountyOrParish"]
