class SessionsController < ApplicationController


  def new
  end


  def destroy

    reset_session

    session[:return_to] = request.referer

    redirect_to session.delete(:return_to), notice: "You have signed out of HoodCulture."
  end

  def create

    session[:return_to] = request.referer

    user = User.find_by(:email_address => params[:email])
    if user.present?
      if user.password == params[:pwd]
        session[:user_id] = user.id
        redirect_to root_url, notice: "Welcome back to HoodCulture!"
      else
        redirect_to session.delete(:return_to), notice: "Wrong Password."
      end
    else
      redirect_to session.delete(:return_to), notice: "Unknown user."
    end
  end

 end

