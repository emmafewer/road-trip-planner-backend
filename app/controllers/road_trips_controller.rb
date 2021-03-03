class RoadTripsController < ApplicationController
    
    def show
        road_trip = RoadTrip.find(params[:id])
        render json: road_trip, include: [:parks, :campgrounds]
    end

    def create
        road_trip = RoadTrip.create(name: road_trip_params['name'], user_id: road_trip_params['user_id'])

        render json: road_trip, include: [:user]
    end

    def update
        road_trip = RoadTrip.find(params[:id])
        road_trip.update(start_date: road_trip_params['start_date'], end_date: road_trip_params['end_date'])
        render json: road_trip, include: [:parks, :campgrounds]
    end

    def destroy
        road_trip = RoadTrip.find(params[:id])
        road_trip.destroy
    end

    private

    def road_trip_params
        params.require(:road_trip).permit(:name, :start_date, :end_date, :user_id)
    end
end
