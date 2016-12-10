class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
        @project = @user.projects.new
    end


    def create
        # @user = User.create(user_params)
        # redirect_to(user_projects_path(@user))
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            # redirect_to '/'
            redirect_to(user_projects_path(@user))
        else
            redirect_to '/signup'
        end
    end
    private

    def user_params
        params.require(:user).permit(:name, :email, :city, :about, :password, :password_confirmation)
    end

end
