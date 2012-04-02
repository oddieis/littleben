require 'dm-core'  
require 'dm-timestamps'  
require 'dm-validations'  
require 'dm-migrations'

DataMapper.setup :default, "sqlite://#{Dir.pwd}/database.db"  


require "models/bill"
require "models/user"

# Perform basic sanity checks and initialize all relationships
# Call this when you've defined all your models
DataMapper.finalize

# automatically create the Bill
Bill.auto_upgrade!