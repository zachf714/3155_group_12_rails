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
    
    def update
        @active = Preload.find(params[:id])
        
        if @active.update(preload_params)
            redirect_to @active
        else
            render 'edit'
        end 
    end
    
    def destroy
        @active = Preload.find(params[:id])
        @active.destroy
        
        redirect_to preload_index_path
    end
    
    
end

private
    def preload_params
        params.require(:preload).permit(:title, :text)
    end


