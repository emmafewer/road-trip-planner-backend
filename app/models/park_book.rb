class ParkBook < ApplicationRecord
  belongs_to :park
  belongs_to :road_trip
end
