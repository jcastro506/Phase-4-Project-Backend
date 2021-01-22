class User < ApplicationRecord
    has_many :photos, dependent: :destroy
    has_many :destinations, through: :photos
end
