class CampgroundSave < ApplicationRecord
  belongs_to :campground
  belongs_to :road_trip
end
