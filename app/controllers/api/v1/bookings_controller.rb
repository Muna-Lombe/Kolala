class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_booking, only: [:show, :update, :destroy]

  def show
    data = {booking: @booking, room:@booking.room, comment:@booking.comments}
    render json: data
    
  end

  def create
    @new_booking = Booking.new(booking_params)
    if @new_booking.save
      # render json: { status: 'success'}
      render json: @new_booking

    else 
      # render error
    end
  end

  def destroy
    @booking.destroy
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :room_id, :user_id)
  end
end
