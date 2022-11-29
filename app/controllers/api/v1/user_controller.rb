class Api::V1::UserController < ApplicationController

    def index 
        @user = User.all 
        render json: @user
    end 

    def create 
        @user = User.new(user_params)
        if @user.save 
            render json: @user, status: :created 
        else
            render json: @user.errors_full_message, status: :unprocessable_entity
        end
    end 

    def destroy 
        @user = User.find(params[:id])
        @user.destroy

    end

    def show 
        @user = User.find(params[:id])
        render json: @user
    end 

    def new 
        
    end

    private 

    def user_params 
        require(:user).permit(:name, :email, :password, :password_confirmation)
    end 
end