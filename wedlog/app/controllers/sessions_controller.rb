class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(email: params[:email])
  	if @user and @user.password == params[:password]
  		session[:user_id] = @user.id
  		flash[:notice] = "You are logged in!"
  		redirect_to @user
  	else
  		flash[:notice] = "Incorrect email or password, try again!"
  		render :new #new.html.erb with render 'form'
	end
end

  def delete  #log out
  	session[:user_id] = nil
  	flash[:notice] = "You are logged out. See you soon!"
  	redirect_to new_user_path
  end
end
