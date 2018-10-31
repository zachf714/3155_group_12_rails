class ActiveController < ApplicationController
    
    def new
    end
    
    def create
        @user = User.new(params[user_params])
        
        @user.save
        redirect_to @user
    end
end

private
    def user_params
        params.requre(:active).permit(:title, :text)
    end