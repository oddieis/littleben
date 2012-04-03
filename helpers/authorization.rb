#encoding: utf-8
module Authorization
  def auth
    @auth ||= Rack::Auth::Basic::Request.new(request.env)
  end
 
  def unauthorized!(realm="littleben.com")
    redirect "/login", 303
  end
 
  def logged_in?
    false
  end
 
  def authorize(username, password)
    # Insert your logic here to determine if username/password is good
    true
  end
 
  def require_administrative_privileges
    unauthorized! unless logged_in? || (request.path_info == '/login' && !logged_in?)
  end
  
end