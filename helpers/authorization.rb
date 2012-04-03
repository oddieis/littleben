#encoding: utf-8
module Authorization
  def auth
    @auth ||= Rack::Auth::Basic::Request.new(request.env)
  end
 
  def unauthorized!(realm="littleben.com")
    redirect "/login", 303
  end
 
  def logged_in?
    session['logged_in']
    #false
  end
 
  def authorize(username, password)
    
    if(username == "jo" && password == "jo")
      session["logged_in"] = true
      true
    else
      false
    end
    
  end
  
  def logout()
    session["logged_in"] = false
  end
 
  def require_administrative_privileges
    unauthorized! unless logged_in? || (request.path_info == '/login' && !logged_in?)
  end
  
end