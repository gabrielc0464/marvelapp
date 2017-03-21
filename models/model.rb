require 'net/http'
require 'pp'
require 'json'
require 'marvelite'
# url = 'http://gateway.marvel.com/v1/public/characters'
# uri= URI(url)
# response= Net::HTTP.get(url)
# json.parse(response)
# @client = Marvel::Client.new

# @client.configure do |config|
#   config.api_key = '74b98ca15d87e5539c26ee13a2ba0f69'
#   config.private_key = '63db98dc1123d3b82d53beadd03dcb47b37268d2'
# end

# @client.comics(title: 'Daredevil')


# md5 = Digest::MD5.new
# md5.update 'message1'

# md5.hexdigest


#      client = Marvelite::API::Client.new( :public_key => '74b98ca15d87e5539c26ee13a2ba0f69', :private_key => '63db98dc1123d3b82d53beadd03dcb47b37268d2')
#      hero = client.character('Spider-man')
# pp hero['data']['results'][0]["description"]
 
def get_definition(super_hero)
    begin
  client = Marvelite::API::Client.new( :public_key => '74b98ca15d87e5539c26ee13a2ba0f69', :private_key => '63db98dc1123d3b82d53beadd03dcb47b37268d2')
      hero = client.character(super_hero)
    pp hero['data']['results'][0]["description"] 
rescue
    return "Sorry,There is no superhero with that name"
      end
  end
get_definition(:name)
# def get_image(super_hero)
#   client = Marvelite::API::Client.new( :public_key => '74b98ca15d87e5539c26ee13a2ba0f69', :private_key => '63db98dc1123d3b82d53beadd03dcb47b37268d2')
#     hero = client.character(super_hero)
#     pp hero['data']['results'][0]["thumbnail"]["path"]
# end
# get_image("Wolverine")
