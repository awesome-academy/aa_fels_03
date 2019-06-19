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
end
