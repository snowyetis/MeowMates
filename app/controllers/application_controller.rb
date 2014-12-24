class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  before_action :authenticate_user!

  respond_to :html, :js

  # before_filter :auth_user
  #
  # def auth_user
  #   redirect_to home_index_url unless user_signed_in?
  # end



end
