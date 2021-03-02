class Park < ApplicationRecord
    has_many :park_books, :dependent => :destroy
    has_many :road_trips, through: :park_books
    has_many :park_images, :dependent => :destroy
end
