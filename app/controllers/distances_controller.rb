class DistancesController < ApplicationController
  def create
    if user_signed_in?
      Distance.create(params[:distance])
      flash[:notice] = "Your distance has been logged!"
      redirect_to url_for(controller: 'dashboard', action: 'history')
    else
      session[:distance] = params[:distance][:distance]
      redirect_to url_for(controller: 'dashboard', action: 'signup')
    end
  end
end
