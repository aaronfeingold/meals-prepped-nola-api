class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all 

    render json: @users
  end 

   def show
     @user = User.find(params[:id])
     render json: {user: current_user}
   end

   def create
     @user = User.new(user_params)
     if @user.valid? && user_params[:password] == user_params[:password_confirmation]
        @user.save
        login!
        render json: {
          status: :created,
          user: @user
        }
     else
         render json: { 
          status: 500,
          error: @user.errors.full_messages 
         }
     end
   end

   private

   def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email)
   end
end
