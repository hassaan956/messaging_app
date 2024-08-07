class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]
  def new
  
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Logged In Successfully"
      redirect_to root_path
    else
      flash.now[:error] = "Something wrong with your credentials"
      render 'new'
    end
  end
  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged Out Successfully"
    redirect_to login_path
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = "You are already Logged In"
      redirect_to root_path
    end
  end
end
