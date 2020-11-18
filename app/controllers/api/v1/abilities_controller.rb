class Api::V1::AbilitiesController < ApplicationController
    

    def index
         abilities = Ability.all
         json_string = ProductSerializer.new(abilities).serializable_hash
         render json: json_string
    end



end