class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flas[:notice] = "User created successfully"
            redirect_to user_path(@user)
        end
    end

    def user_params
        params.require(:article).permit(:username, :email, :password)
    end
end