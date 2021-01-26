class DestinationsController < ApplicationController 

    
def index 
    destinations = Destination.all.order(:id)
    render json: destinations
end 




end 