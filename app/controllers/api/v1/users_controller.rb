class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:show]
    skip_before_action :authorized, only: [:create]

    def show
      user = User.find(params[:id])
      render json: user
    end
  
    def create
      user = User.create(user_params)
      if user.valid?
        token = issue_token(user)
        render json: { user: UserSerializer.new(user), token: token }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :not_acceptable
      end
    end
  
    # def update
    # user = User.find(params[:id])
    #   user.update(user_params)
    #   if user.save
    #     render json: user, status: :accepted
    #   else
    #     render json: { errors: user.errors.full_messages }, status: :unprocessible_entity
    #   end
    # end

    # def destroy
    # user = User.find(params[:id])
    #   user.destroy
    # end
  
    private
  
    def user_params
      params.permit(:password, :password_confirmation, :first_name, :last_name, :email)
    end
  
    def find_user
      user = User.find(params[:id])
    end
end
