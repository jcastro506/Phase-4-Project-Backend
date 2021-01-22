class Destination < ApplicationRecord
    has_many :photos, dependent: :destroy
    has_many :users, through: :photos
end
