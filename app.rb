# encoding: utf-8
require 'sinatra'
require 'haml'

class MyApp < Sinatra::Application
  enable :sessions

  configure :production do
    set :haml, { :ugly=>true }
    set :clean_trace, true
  end

  configure :development do
    # ...
  end

  helpers do
    include Rack::Utils
    alias_method :h, :escape_html
  end
end

require 'models/init'
require 'helpers/init'
require 'routes/init'