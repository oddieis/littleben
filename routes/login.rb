require 'rubygems'
require 'sinatra'
require 'haml'

get '/login' do
  haml :login  
end
