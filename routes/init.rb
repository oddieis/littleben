require 'routes/login'
require 'routes/about'
require 'routes/main'

#http://www.gittr.com/index.php/archive/sinatra-basic-authentication-selectively-applied/
  
before '/*' do
 require_administrative_privileges
end

