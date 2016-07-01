class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  

#in order to have only users who are logged in being able to see certain sites; otherwise they
#they will be redirected to the login page
#we need to check whether a user is logged in before sending them to schedule
  helper_method :current_user 

def current_user 
  @current_user ||= User.find(session[:user_id]) if session[:user_id] 
end
  
  def require_user 
  redirect_to '/accessdenied' unless current_user 
end


def require_editor 
  redirect_to '/accessdenied' unless current_user.editor? 
end
  
 def require_admin
  redirect_to '/accessdenied' unless current_user.admin? 
end
  

end
