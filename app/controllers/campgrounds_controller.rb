class CampgroundsController < ApplicationController

    # def index
    #     url = "https://ridb.recreation.gov/api/v1/campsites?limit=106715&query=overnight&offset=0&apikey=70aa9b04-78cd-4c00-8694-7955bd9d1bfc"
    #     response = RestClient.get(url)
    #     campgrounds = JSON.parse(response) 
    #     byebug
    #     render json: campgrounds

# 50.times{|c| Campground.create(time: "8:50am", customer:Customer.all.sample, donut:Donut.all.sample)}
    # end

    def create
        campground = Campground.find_or_create_by(name: campground_params['name'], url: campground_params['url'], park_code: campground_params['parkCode'], latitude: campground_params['latitude'], longitude: campground_params['longitude'], description: campground_params['description'])

        render json: campground
    end

    def destroy
        campground = Campground.find(params[:id])
        campground.destroy
    end

    private

    def campground_params
        params.require(:campground).permit(:name, :url, :park_code, :latitude, :longitude, :description)
    end
end
