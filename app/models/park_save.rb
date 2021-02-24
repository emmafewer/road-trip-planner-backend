class ParkSave < ApplicationRecord
  belongs_to :park
  belongs_to :road_trip
end
