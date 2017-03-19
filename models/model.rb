require 'net/http'
require 'pp'
require 'json'
url = 'http://gateway.marvel.com/v1/public/comics?issueNumber=1'
uri= URI(url)
response= Net::HTTP.get(url)
json.parse(response)