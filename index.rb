#http://net.tutsplus.com/sessions/ruby-for-newbies/
#http://net.tutsplus.com/tutorials/ruby/how-to-build-a-shortlink-app-with-ruby-and-redis/
#http://stackoverflow.com/questions/5015471/using-sinatra-for-larger-projects-via-multiple-files/5030173#5030173
#https://github.com/sirfilip/sinatra-mvc-template

require 'rubygems'
require 'sinatra'
require 'haml'

def welcome(name)
  return "Hello #{name}"
end

get '/' do
  haml :index  
end

get '/about' do
  haml :about  
end

get '/login' do
  haml :login  
end
