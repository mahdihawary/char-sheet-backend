class Api::V1::SpellsController < ApplicationController
    

    def index
        spells = Spell.all
        json_string = SpellSerializer.new(spells).serializable_hash
        render json: json_string
    end



end