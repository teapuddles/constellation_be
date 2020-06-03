class SeasonsController < ApplicationController

  def index
    seasons = Season.all 
    
    render json: seasons, only: [:name]
  end

end
