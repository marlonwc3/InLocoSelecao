class ConfirmationsController < Devise::ConfirmationsController

  def new
  	if user_signed_in?
    	redirect_to home_path
	else
		super
	end
  end


end