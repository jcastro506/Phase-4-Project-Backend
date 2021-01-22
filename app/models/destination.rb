class Destination < ApplicationRecord
    has_many :photos
    has_many :users, through: :photos
end
