class EtniaController < ApplicationController
    #mostrar etnia
    def show
        etnia = Etnium.find(params[:id]);
        render json: {status: 'Success', message: 'load etnia', data:etnia}, status: :ok
    end

    #crear etnia
    def create
        etnias = Etnium.new(etnia_params)
        if etnias.save
            render json: {status: 'Success', message: 'load etnia', data:etnias}, status: :ok
        else
            render json: {status: 'Success', message: 'load etnia', data:etnias}, status: :ok    
        end
    end
end
