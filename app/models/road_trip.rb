class RoadTrip < ApplicationRecord
  belongs_to :user
  has_many :park_books, :dependent => :destroy
  has_many :parks, through: :park_books
  has_many :campground_books, :dependent => :destroy
  has_many :campgrounds, through: :campground_books
end
