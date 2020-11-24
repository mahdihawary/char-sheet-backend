class Api::V1::UsersController < ApplicationController
    

    def show
        user = User.find(params[:id])
        json_string = UserSerializer.new(user).serializable_hash
        render json: json_string
    end

    def index
        users = User.all
        json_string = userSerializer.new(users).serializable_hash
        render json: json_string
    end

    def create
        user= User.create(user_params)
        json_string = UserSerializer.new(user).serializable_hash
        render json: json_string
    end

    private
    def user_params
        params.require(:user).permit(:name)
    end
end


