class WelcomeController < ApplicationController
  before_action :authenticate_user!
  # authenticate_user devise_error_messages! not working
  #
  #
  
  def index

  end

end
