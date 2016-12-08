require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "can create a user" do
    @user = User.new(name: "Corey", email: "corey@example.com", city: "New York")
    assert @user.save
  end
end
