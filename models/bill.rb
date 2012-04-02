class Bill
    include DataMapper::Resource
    property :id, Serial
    property :title, String
    property :summary, Text
    property :body, Text
    property :sponsor_id, Integer
    property :vote_plus, Integer
    property :vote_minus, Integer
    property :created_at, DateTime
end