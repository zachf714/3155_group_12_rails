class AddController < ApplicationController
    def create
        @preload = Preload.find(params[:preload_id])
        @user = @preload.users.create(user_params)
        redirect_to preload_path(@preload)
    end
    
    private
    def user_params
        params.require(:user).permit(:zip, :body)
    end
end
