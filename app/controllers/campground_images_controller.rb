class CampgroundImagesController < ApplicationController

    # def create
    #     CampgroundImage.find_or_create_by(title: params['campground_images']['image']['title'], description: params['campground_images']['image']['caption'], url: params['campground_images']['image']['url'], description: params['campground_images']['image']['description'], campground_id: params['campground_images']['campground_id'])
    # end

    private

    def campground_images_params
        # params.require(:campground_images).permit(:image, :campground_id)
    end
end
