require 'net/http'
require 'pp'
require 'json'
require 'marvelite'

##Method that grabs the description from the hash and then prints it out depending on what super hero name is typed in.
def get_definition(super_hero)
    begin
  client = Marvelite::API::Client.new( :public_key => '74b98ca15d87e5539c26ee13a2ba0f69', :private_key => '63db98dc1123d3b82d53beadd03dcb47b37268d2') #key needed for api to work
      hero = client.character(super_hero)
    pp hero['data']['results'][0]["description"] 
rescue
    return "Sorry,there is no superhero with that name"  #Prints out this strinf if a superhero is not found
      end
  end
