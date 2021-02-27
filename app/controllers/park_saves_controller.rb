class ParkSavesController < ApplicationController

    def create
        byebug
        park_save = ParkSave.create(park_id: params['park_id'], road_trip_id: params['road_trip_id'])

        render json: park_save
    end

    private

    def park_params
        params.require(:park_save).permit(:park_id, :road_trip_id)
    end
end
