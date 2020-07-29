require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save without email" do
    user = User.new
    user.first_name = "tester"
    user.last_name = "mctest"
    user.password = "password"
    user.password_confirmation = "password"
    assert_not user.save, "Saved the user without email"
   end
end
