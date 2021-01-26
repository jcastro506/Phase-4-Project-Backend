class ApplicationController < ActionController::API


    def authorize 
    @user = User.first
    unless @user
      render json: { error: "Unauthorized request" }, status: :unauthorized
    end
    # continue to the rest of the action
  end

end
