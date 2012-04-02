require 'rubygems'
require 'sinatra'
require 'haml'

get '/login' do
  haml :login  
end

post '/login' do
  username = params[:username]
  email = params[:email]
  type = params[:type] 
  haml :login  
end