require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

   post'/result' do
    puts params
    @user_name = params[:name]
    
    @user_description = get_definition(@user_name)
     @user_pic = get_image(@user_name) 
     erb:result
   end
  
end
