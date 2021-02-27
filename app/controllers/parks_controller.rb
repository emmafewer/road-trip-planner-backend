class ParksController < ApplicationController

    # def index
    #     render json: Park.all, include: [:parks, :user]
    # end

    def create
        byebug
        park = Park.find_or_create_by(name: park_params['fullName'], url: park_params['url'], park_code: park_params['parkCode'], description: park_params['description'], latitude: park_params['latitude'], longitude: park_params['longitude'], designation: park_params['designation'])

        render json: park
    end

    private

    def park_params
        params.require(:park).permit(:fullName, :url, :parkCode, :description, :latitude, :longitude, :designation)
    end
end


