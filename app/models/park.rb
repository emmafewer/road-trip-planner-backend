class Park < ApplicationRecord
    has_many :park_saves
    has_many :road_trips, through: :park_saves
    has_many :park_images
end
