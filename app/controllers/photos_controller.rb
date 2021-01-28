class PhotosController < ApplicationController 

    def index 
        photos = Photo.all.order(:id)
        render json: photos
    end 

    def show
        photo = Photo.find(params[:id])
        render json: photo
    end 

    def edit
        photo = Photo.find(params[:id])
    end

    def update
        # byebug
        photo = Photo.find(params[:id])
        photo.update(photo_params)
        # byebug
        render json: photo
    end

    def new
        photo = Photo.new
    end

    def create
        photo = Photo.create!(photo_params)
        render json: photo
    end
    
    def destroy 
        photo = Photo.find(params[:id])
        photo.destroy
        render json: photo
    end

    private

    def photo_params
        params.require(:photo).permit(:image_url, :location, :description, :date, :likes, :user_id, :destination_id)
    end

end 