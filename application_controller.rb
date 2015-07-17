require 'bundler'
Bundler.require
require_relative 'models/clothing.rb'

class MyApp < Sinatra::Base
  
  get '/' do #/== www.mywebsite.com/about_me"/" ==website.com
    erb :index
  end
  post '/results' do 
    @typeshirt=params[:typeshirt]
    @ownshirt=params[:shirt]
    @typepants=params[:typepants]
    @ownpants=params[:pants]
    @typeshoes=params[:typeshoes]
    @ownshoes=params[:shoes]
    @typeother=params[:typeother]
    @ownother=params[:other]
    erb :results
  end
end