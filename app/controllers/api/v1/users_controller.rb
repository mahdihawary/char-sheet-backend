class Api::V1::UsersController < ApplicationController
    

    def show
        user = User.find(params[:id])
        json_string = ProductSerializer.new(user).serializable_hash
        render json: json_string
    end



end