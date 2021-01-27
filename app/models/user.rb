class User < ApplicationRecord
    has_many :photos, dependent: :destroy
    has_many :destinations, through: :photos

    def getPhotos 
        allPhotos = User.first.photos
    end 
end
