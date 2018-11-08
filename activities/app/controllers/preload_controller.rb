class PreloadController < ApplicationController
    def index
        @active = Preload.all
        @user = User.all
    end
    
    def new
    end
    
    def show
        @active = Preload.find(params[:id])
    end
    
    def create
        @active = Preload.new(preload_params)
        
        if @user.save
            redirect_to @user
        else
            render 'new'
        end
    end
    
    def edit
        @active = Preload.find(params[:id])
    end
    
    
end

private
    def preload_params
        params.require(:preload).permit(:title, :text)
    end


