require 'sinatra'
require 'sinatra/reloader'
also_reload '/lib/**/*.rb'
require './lib/places.rb'



get '/' do
  @places = Place.all
  erb :index
end


post '/places' do
  @name = params[:name]
  @place = Place.new(@name)
  @place.save
redirect '/'
end
