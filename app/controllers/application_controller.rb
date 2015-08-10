class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # give us access to sessions from our views
  helper_method :current_user

  
# -unless- is the opposite of an if statement
  def authorize
  	unless current_user
  		redirect_to login_path
  	end
  end

end
