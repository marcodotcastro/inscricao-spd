class Api::V1::SubscriptsController < ApplicationController
    def index
        render json: Subscript.all
    end

    def create
        SubscriptCreateJob.perform_later(subscript_params)
        
        render json: { message: "Inscrição Enviada com Sucesso!" }, :status => :created
    end
       
    private
       
    def subscript_params
        params.require(:subscript).permit(:name, :email, :phone, :description, :language, :schooling)
    end
       
end
