class Api::V1::RacesController < ApplicationController
    

    def index
         races = Race.all
         json_string = RaceSerializer.new(races).serializable_hash
         render json: json_string
    end



end