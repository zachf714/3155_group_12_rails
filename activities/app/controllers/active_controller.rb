class ActiveController < ApplicationController
    
    def index
        @preload = Preload.all
        @user = User.all
    end
    
    def new
    end
    
    def show
        @preload = Preload.find(params[:id])
        @user = User.find(params[:id])
    end
    
    def create
        @user = User.new(user_params)
        
        if @user.save
            redirect_to @user
        else
            render 'new'
        end
    end
end

private
    def user_params
        params.requre(:user).permit(:title, :text)
    end