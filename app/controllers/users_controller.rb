class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
        @project = @user.projects.new
    end


    def create
        @user = User.create(user_params)
        redirect_to(user_projects_path(@user))

    end
    private

    def user_params
        params.require(:user).permit(:name, :email, :city, :about)
    end

end
