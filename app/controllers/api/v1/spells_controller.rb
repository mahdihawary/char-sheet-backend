class Api::V1::SkillsController < ApplicationController
    

    def index
        spells = Spell.all
        json_string = ProductSerializer.new(spells).serializable_hash
        render json: json_string
    end



end