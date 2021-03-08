class ParksController < ApplicationController

    # def index
    #     render json: Park.all, include: [:parks, :user]
    # end

    def create
        park = Park.find_or_create_by(name: park_params['fullName'], url: park_params['url'], park_code: park_params['parkCode'], description: park_params['description'], latitude: park_params['latitude'], longitude: park_params['longitude'], designation: park_params['designation'], image: park_params['images'][0]['url'])
        park_params['images'].each do |i|
            img = ParkImage.find_or_create_by(url: i['url'], title: i['title'], park_id: park.id)
        end
        render json: park, include: :park_images
    end

    def destroy
        park = Park.find(params[:id])
        park.destroy
    end

    private

    def park_params
        params.require(:park).permit(:fullName, :url, :parkCode, :description, :latitude, :longitude, :designation, :image, images: [:url, :title])
    end
end


