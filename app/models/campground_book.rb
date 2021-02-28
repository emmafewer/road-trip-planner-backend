class CampgroundBook < ApplicationRecord
  belongs_to :campground
  belongs_to :road_trip
end
