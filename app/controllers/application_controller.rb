class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    home_path || stored_location_for(resource)
  end

  def after_sign_up_path_for(resource)
    home_path  || stored_location_for(resource)
  end  

end
