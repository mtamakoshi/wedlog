class UsersController < ApplicationController
 
#show the list of all users
  def index
  	@users = User.all
  end

  def edit
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  		if @user.save
  		 redirect_to user_path(@user), notice: "New account created."
  		else
  			flash[:alert] = "There was a problem"
  end
end

  def update 
  	@user = User.find(params[:id])
  	@user.update(user_params)
	flash[:notice] = "Your profile has been successfully updated."  
	redirect_to user_path(@user)
  end
  	
  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	flash[:notice] = "Your profile has been deleted."
  	redirect_to new_user_path
  end
  	
end

def user_params
	params.require(:user).permit(:username, :fname, :lname, :bio, :email, :password, :city, :state, :country)
end
