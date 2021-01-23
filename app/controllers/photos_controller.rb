class PhotosController < ApplicationController 

    def index 
        photos = Photo.all 
        render json: photos
    end 

    def show
        photo = Photo.find(params[:id])
        render json: photo
    end 

    def new
        photo = Photo.new
    end

    def create
        photo = Photo.create(photo_params)
        render json: photo
    end

    def destroy 
        photo = Photo.find(params[:id])
        photo.destroy
        render json: photo
    end

    private

    def photo_params
        params.require(:photo).permit(:image_url, :location, :description, :date, :likes, :user, :destination)
    end

end 