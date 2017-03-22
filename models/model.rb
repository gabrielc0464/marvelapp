require 'net/http'
require 'pp'
require 'json'
require 'marvelite'

def get_definition(super_hero)
    begin
  client = Marvelite::API::Client.new( :public_key => '74b98ca15d87e5539c26ee13a2ba0f69', :private_key => '63db98dc1123d3b82d53beadd03dcb47b37268d2')
      hero = client.character(super_hero)
    pp hero['data']['results'][0]["description"] 
rescue
    return "Sorry,There is no superhero with that name"
      end
  end
