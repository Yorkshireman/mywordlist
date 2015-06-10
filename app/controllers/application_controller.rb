class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def admin?
  	unless user_signed_in? && current_user.admin
  		redirect_to root_path, alert: 'You must be an admin to do this (naughty you).'
  	end
  end

end
