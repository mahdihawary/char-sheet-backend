class Api::V1::SkillsController < ApplicationController
    

    def index
        skills = Skill.all
        json_string = SkillSerializer.new(skills).serializable_hash
        render json: json_string
    end



end