class PreloadController < ApplicationController
    def index
        @active = Preload.all
        @user = User.all
    end
    
    def new
        @active = Preload.new
    end
    
    def show
        @active = Preload.find(params[:id])
    end
    
    def create
        @active = Preload.new(preload_params)
        
        if @active.save
            redirect_to @active
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


