class Api::V1::CharactersController < ApplicationController
    

    def show
         character = Character.find(params[:id])
         json_string = CharacterSerializer.new(character).serializable_hash
         render json: json_string
    end

    def index
        characters = Character.all
        json_string = CharacterSerializer.new(characters).serializable_hash
        render json: json_string
    end

    def update
        character = Character.find(params[:id])
        character.update(character_params)
        json_string = CharacterSerializer.new(character).serializable_hash
        render json: json_string
    end


    def create
        character= Character.create(character_params)
        json_string = CharacterSerializer.new(character).serializable_hash
        render json: json_string
    end

    private
    def character_params
        params.require(:character).permit(:health,:strength,:wisdom,:dexterity,
    :intelligence,:charisma,:constitution,:level,:image,
    :darkvision,:speed,:proficiency,:name,:class_type,:race,:armor,:initiative,:user_id)
    end



end