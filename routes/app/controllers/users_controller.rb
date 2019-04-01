class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def update
    user = User.find_by(id: params[:id])
    if user.update(params)
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end
end