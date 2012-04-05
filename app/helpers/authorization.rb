module Authorization
  
  #The current user can't access the current page.
  def unauthorized!
    redirect "/login", 303
  end
 
  #Is the current user logged in?
  def logged_in?
    session['logged_in']
    #false
  end
 
  #Method called from the login controller to authenticate the user
  def authorize(username, password)
    #Basic logic to check name and password
    if(username == "jo" && password == "jo")
      session["logged_in"] = true
    end
    session["logged_in"]
  end
  
  #Destroy the session
  def logout()
    session["logged_in"] = false
  end
 
  #Called on every application's page
  def require_administrative_privileges
    unauthorized! unless logged_in? || (request.path_info == '/login' && !logged_in?)
  end
  
end