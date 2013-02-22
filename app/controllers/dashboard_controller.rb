class DashboardController < ApplicationController
  def index
    @distance = Distance.new
  end

  def history
    @current_distance = session[:distance]
    session.delete(:distance)
    @offset = "1 tree"
    @total_offset = "5 trees"
  end

  def signup
    @distance = session[:distance]
    @offset = "1 tree"
  end
end
