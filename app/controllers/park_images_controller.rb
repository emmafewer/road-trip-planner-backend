class ParkImagesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    def index
        render json: ParkImage.all
    end
end
