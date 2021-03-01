class CampgroundsController < ApplicationController

    # def index
    #     url = "https://ridb.recreation.gov/api/v1/campsites?limit=106715&query=overnight&offset=0&apikey=70aa9b04-78cd-4c00-8694-7955bd9d1bfc"
    #     response = RestClient.get(url)
    #     campgrounds = JSON.parse(response) 
    #     byebug
    #     render json: campgrounds

# 50.times{|c| Campground.create(time: "8:50am", customer:Customer.all.sample, donut:Donut.all.sample)}
    # end
end
