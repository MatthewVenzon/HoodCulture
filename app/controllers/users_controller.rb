class UsersController < ApplicationController

  def new
  end

  def profile
    @user = User.find_by(:id => params[:user_id])
    if @user.id != session[:user_id]
      redirect_to root_url, notice: "Access Denied"
    end
   end

   def create
    user = User.new
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email_address = params[:email_address]
    user.password = params[:password]
    user.hometown = params[:hometown]
    user.save
    session[:user_id] = user.id
    redirect_to root_url, notice:"Welcome to HoodCulture!  Thank you for registering."
  end

end
