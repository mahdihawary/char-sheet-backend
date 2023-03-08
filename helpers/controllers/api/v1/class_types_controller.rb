class Api::V1::ClassTypesController < ApplicationController
    

    def index
         class_types = ClassType.all
         json_string = ClassTypeSerializer.new(class_types).serializable_hash
         render json: json_string
    end



end