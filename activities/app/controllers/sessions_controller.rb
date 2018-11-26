class SessionsController < ApplicationController
  def create
    current = Current.from_omniauth(request.env["omniauth.auth"])
    session[:current_id] = current.id
    redirect_to root_path
  end

  def destroy
    session[:current_id] = nil
    redirect_to root_path
  end
end
