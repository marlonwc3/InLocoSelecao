require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should not save user without email" do
  	user = User.new 
  	assert_not user.save
  end

  test "should not save user with email without at symbol" do
  	user = User.new
  	user.email = 'teste_cin.ufpe.br'
  	assert_not user.save
  end

  test "email addresses should be unique" do
    duplicate_user = users(:carlos).dup
    assert_not duplicate_user.valid?
  end

  test "should not save users with duplicated email" do
    duplicate_user = users(:carlos).dup
    assert_not duplicate_user.save
  end


end
