class RoadTrip < ApplicationRecord
  belongs_to :user
  has_many :park_saves
  has_many :parks, through: :park_saves
  has_many :campground_saves
  has_many :campgrounds, through: :campground_saves
end
