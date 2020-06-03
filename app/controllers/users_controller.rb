class UsersController < ApplicationController

  def index
    users = User.all 
    render json: users
    # only: [:username]
  end

  def show
    user = User.find_by(params[:id])
    render json: user
  end

  def create
    user = User.find_or_create_by(username: user_params[:username])
  
    render json: user
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user 
  end 

  private 
  def user_params
    params.require(:user).permit(:username)
  end
end
