class ActiveController < ApplicationController
    
    def index
        @preload = Preload.all
        @user = User.all
    end
    
    def new
    end
    
    def show
        @preload = Preload.find(params[:id])
    end
    
    def create
        @preload = Preload.new(preload_params)
        
        if @user.save
            redirect_to @user
        else
            render 'new'
        end
    end
    
    def edit
        @preload = Preload.find(params[:id])
    end
end

private
    def preload_params
        params.requre(:preload).permit(:title, :text)
    end