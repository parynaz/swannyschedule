class SessionsController < ApplicationController

#when people want to log in
  def new
  end

  #when they have pressed log in with info
  
  def create
     @user = User.find_by_email(params[:session][:email])
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to '/schedule'
  else
    redirect_to '/loginerror'
  end 
end
  def destroy 
  session[:user_id] = nil 
  redirect_to '/' 
end
  

end
