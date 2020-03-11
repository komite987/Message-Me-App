class SessionsController < ApplicationController

  before_action :already_logged_in, except: [:destroy]

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Welcome #{user.username}"
      redirect_to root_path
    else
      flash.now[:warning] = "There was a problem with your information"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:danger] = "You are logged out"
    redirect_to login_path
  end


  private
  def already_logged_in
    if logged_in?
      flash[:warning] = "You are already logged in"
      redirect_to root_path
    end
  end

end
