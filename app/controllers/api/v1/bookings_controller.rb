class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_booking, only: [:show, :update, :destroy]
  # before_action :booking_params, only: [:create]

  
  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    render json: @booking
  end

  def create
    @new_booking = Booking.new(booking_params)
    @new_booking.save
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
