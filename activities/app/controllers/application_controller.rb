class ApplicationController < ActionController::Base
    helper_method :current_user
    
    def current_user
        @current_user ||= Current.find(session[:current_id]) if session[:current_id]
    end
    
    def index
    end
end
