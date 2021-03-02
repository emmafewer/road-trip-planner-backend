class CampgroundBooksController < ApplicationController

    def create
        campground_book = CampgroundBook.create(campground_id: params['campground_id'], road_trip_id: params['road_trip_id'])

        render json: campground_book
    end

    private

    def campground_book_params
        params.require(:campground_book).permit(:campground_id, :road_trip_id)
    end
end
