class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :is_user_admin?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize_user!
    unless current_user
      redirect_to signin_path, notice: "You must sign in to view this page."
      false
    else
      true
    end
  end

  def is_user_admin?
    current_user && current_user.role == "admin"
  end

  def authorize_admin!
    unless current_user && authorize_user! && is_user_admin?
      redirect_to root_url, notice: "You don't have access to this page."
    end
  end

end
