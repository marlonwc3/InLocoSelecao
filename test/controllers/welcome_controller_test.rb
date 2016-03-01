require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
 include Devise::TestHelpers

  test "should redirect unlogged users to login page when try to acess home page" do
   @request.env["devise.mapping"] = Devise.mappings[:user]
   post :index, user: :carlos
   assert_response :found
   assert_redirected_to new_user_session_path
  end

  test "should provide acess to home page for logged user" do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    assert users(:confirmed_user).confirmed?
    sign_in users(:confirmed_user)
    post :index, user: users(:confirmed_user)
    assert_response :ok
   end 


end
