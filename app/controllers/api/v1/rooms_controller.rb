# class RoomsController < ApplicationController
#   before_action :set_room, only: [:show]
#   def index
#     @rooms = Room.all
#   end
#   def show
    
#   end

#   private
#   def set_room
#     @room = Room.find(params[:id])
#   end
# end

class Api::V1::RoomsController < Api::V1::BaseController
  before_action :set_room, only: [:show, :update, :destroy]
  before_action :room_params, only: [:create, :update]
  def index
    @rooms = Room.all
    # render json: @rooms #Just for testing
  end

  def show
    # render json: @story
  end

  def create
    @new_room = Room.new(room_params())
    @new_room.save
  end

  def update
    @room.update(room_params())
  end

  def destroy
    @room.destroy
  end
  
  private

  def set_room
    @room = Room.find(params[:id])
  end
  def room_params
    params.require(:room).permit(:id,:name,:address, :description, :room_photo_url, :price, :is_available,:user_id)
  end
end
