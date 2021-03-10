class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :name, presence: true
    has_many :road_trips
end
