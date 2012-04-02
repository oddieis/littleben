require 'rubygems'
require 'sinatra'
require 'haml'

get '/about' do
  haml :about 
end
