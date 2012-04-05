class User < ActiveRecord::Base
    include DataMapper::Resource
    property :id, Serial
    property :formatted_name, String
    property :title, String
    property :subtitle, String
    property :wikipedia, Text
    property :login, String
    property :email, String
    property :twitter, String
    property :created_at, DateTime
    property :upadted_at, DateTime
end
