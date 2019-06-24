class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def following
    @title = "Following"
    @users = User.find(params[:id]).following
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @users = User.find(params[:id]).followers
    render 'show_follow'
  end

  def login
    @user = User.koala(request.env["omniauth.auth"]["credentials"])
  end

  def create
    if request.env["omniauth.auth"]
      user = User.create_with_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id    
      redirect_to user_path(user.id)
    else
      user = User.find_by_email(params[:email])
      user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    end
  end
end
