class Api::V1::SubscriptsController < ApplicationController
    def index
        render json: Subscript.all
    end
       
end
