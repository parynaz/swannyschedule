class UsersController < ApplicationController

	  def new
    @user = User.new
  end
  

  #take in data submitted through the signup form and save it to the database.
#How is a new session created? Sessions are stored as key/value pairs. In the create action, the line
#session[:user_id] = @user.id
#creates a new session by taking the value @user.id and assigning it to the key :user_id.


  def create 
  @user = User.new(user_params) 
  if @user.save 
    session[:user_id] = @user.id 
    redirect_to '/' 
  else 
    redirect_to '/signup' 
  end 
end
  
  
  
  private
  def user_params
    params.require(:user).permit(:employee_id, :first_name, :last_name, :email, :password)
  end
  
end