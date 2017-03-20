require 'net/http'
require 'pp'
require 'json'
require "marvel_api"
# url = 'http://gateway.marvel.com/v1/public/characters'
# uri= URI(url)
# response= Net::HTTP.get(url)
# json.parse(response)
@client = Marvel::Client.new

@client.configure do |config|
  config.api_key = '74b98ca15d87e5539c26ee13a2ba0f69'
  config.private_key = '63db98dc1123d3b82d53beadd03dcb47b37268d2'
end
@client.characters