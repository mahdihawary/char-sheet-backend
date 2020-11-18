class Api::V1::CharactersController < ApplicationController
    

    def show
         character = Character.find(params[:id])
         json_string = ProductSerializer.new(character).serializable_hash
         render json: json_string
    end



end