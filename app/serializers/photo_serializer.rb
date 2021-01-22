class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :location, :description, :date, :likes
  belongs_to :user
  belongs_to :destination
end
