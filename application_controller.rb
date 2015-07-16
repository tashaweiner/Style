require 'bundler'
Bundler.require
require_relative 'models/clothing.rb'

class MyApp < Sinatra::Base
  
  get '/' do #/== www.mywebsite.com/about_me"/" ==website.com
    erb :index
  end
  post '/results' do 
    @typeshirt=params[:typeshirt]
    @typepants=params[:typepants]
    @typeshoes=params[:typeshoes]
    erb :results
  end
end