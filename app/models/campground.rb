class Campground < ApplicationRecord
    has_many :campground_saves
    has_many :road_trips, through: :campground_saves
    has_many :campground_images
end
