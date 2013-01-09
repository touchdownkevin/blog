class ApplicationController < ActionController::Base
  def is_logged_in?
    !!session[:user_id] or !!session[:admin_id]
  end
end
