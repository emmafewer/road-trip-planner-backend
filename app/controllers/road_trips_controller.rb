class RoadTripsController < ApplicationController

    def create
        road_trip = RoadTrip.create(name: road_trip_params['name'], user_id: road_trip_params['user_id'])

        render json: road_trip, include: [:user]
    end

    private

    def road_trip_params
        params.require(:road_trip).permit(:name, :start_date, :end_date, :user_id)
    end
end
