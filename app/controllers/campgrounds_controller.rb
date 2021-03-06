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
        if campground_params['images'][0] == nil 
            campground = Campground.find_or_create_by(name: campground_params['name'], url: campground_params['url'], park_code: campground_params['parkCode'], latitude: campground_params['latitude'], longitude: campground_params['longitude'], description: campground_params['description'])
        else
            campground = Campground.find_or_create_by(name: campground_params['name'], url: campground_params['url'], park_code: campground_params['parkCode'], latitude: campground_params['latitude'], longitude: campground_params['longitude'], description: campground_params['description'], image: campground_params['images'][0]['url'])
            campground_params['images'].each do |i|
                img = CampgroundImage.find_or_create_by(url: i['url'], title: i['title'], description: i['caption'], campground_id: campground.id)
            end
        end

        render json: campground, include: :campground_images
    end

    def destroy
        campground = Campground.find(params[:id])
        campground.destroy
    end

    private

    def campground_params
        params.require(:campground).permit(:name, :url, :parkCode, :latitude, :longitude, :description, images: [:url, :title, :caption])
    end
end
