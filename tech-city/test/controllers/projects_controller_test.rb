require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
    test "can create a project" do
      @user = User.new(name: "Corey", email: "corey@example.com", city: "New York")
      @project = Project.new(title: "The Best Project", city: "New York", , user: @user)
      assert @project.save
    end
end
