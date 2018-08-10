module Api
    module V1
        class etnia2_controller < ApplicationController
            #consultar todas las etnias
            def index
                etnias = Etnium.order('created_at DESC'); 
                render json: {status: 'Success', message: 'load Etnias', data:etnias}, status: :ok
            end         
            
        end
    end
end