class UsersController < ApplicationController
    def create
        @preload = Preload.find(params[:preload_id])
        @user = @preload.users.create(user_params)
        redirect_to preload_path(@preload)
    end
    
    def destroy
        @preload = Preload.find(params[:id])
        @user = @preload.users.find(params[:id])
        @user.destroy
        
        redirect_to preload_index_path
    end
    
    private
    def user_params
        params.require(:user).permit(:zip, :body)
    end
end
