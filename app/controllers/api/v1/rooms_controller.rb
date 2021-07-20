class Api::V1::RoomsController < Api::V1::BaseController
  before_action :set_room, only: [:show, :update, :destroy]
  def index
    @rooms = Room.all
    # render json: @rooms #Just for testing
  end

  def show
    # render json: @story
  end

  def create
    @new_room = Room.new(room_params)
    if @new_room.save
      # render json: { status: 'success'}
      render json: @new_room
    else 
      # render error
    end
  end

  def update
    @room.update(room_params)
  end

  def destroy
    @room.destroy
  end
  
  private

  def set_room
    @room = Room.find(params[:id])
  end
  def room_params
    params.require(:room).permit(:id,:name,:address, :description, :room_photo_url, :price, :is_available,:user_id, :capacity, :date, :phone_number)
  end
end
