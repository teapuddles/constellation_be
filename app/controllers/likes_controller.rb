class LikesController < ApplicationController

  def create
    like = Like.create(like_params)
  
    render json: like.constellation 
  end

  private

  def like_params
    params.require(:like).permit(:id, :user_id, :constellation_id)
  end

end

