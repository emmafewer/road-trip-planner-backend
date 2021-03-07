class ParkBooksController < ApplicationController

    def create
        park_book = ParkBook.create(park_id: params["park_book"]['park_id'], road_trip_id: params["park_book"]['road_trip_id'])
        render json: park_book
    end

    private

    def park_book_params
        params.require(:park_book).permit(:park_id, :road_trip_id)
    end
end
