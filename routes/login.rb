require 'rubygems'
require 'sinatra'
require 'haml'

get '/login' do
  haml :login  
end

get '/logout' do
  logout 
  redirect "/", 303
end

post '/login' do
  username = params[:username]
  email = params[:email]
  type = params[:type] 
  
  if(authorize(username, email))
     redirect "/", 303
  else
    haml :login 
  end
  
end