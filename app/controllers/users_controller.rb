class UsersController < ApplicationController 

    before_action :authorize

    def show    
        render json: @user 
    end 


    private

  def user_params
    params.require(:name, :age, :email)
  end

end 