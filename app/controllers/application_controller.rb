class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authentication
  private
  def authentication
    @auth = (session[:user_id].present?) ? User.find(session[:user_id]) : nil
  end
end
