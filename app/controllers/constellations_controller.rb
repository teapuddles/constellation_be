class ConstellationsController < ApplicationController

  def index
    constellations = Constellation.all 

    render json: constellations, only: [:name, :description, :image_url, :id, :season_id]
  end

  def destroy
    constellation = Constellation.find(params[:id])
    constellation.destroy
    render json: constellation
  end 

end
