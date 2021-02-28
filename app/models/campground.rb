class Campground < ApplicationRecord
    has_many :campground_books
    has_many :road_trips, through: :campground_books
    has_many :campground_images
end
