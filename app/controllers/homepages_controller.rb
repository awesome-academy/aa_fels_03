class HomepagesController < ApplicationController
  before_action :check_user

  def index; end

  private

  def check_user
  	redirect_to new_user_session_path if !user_signed_in?
  end
end
