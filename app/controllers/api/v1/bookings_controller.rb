class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_booking, only: [:show, :update, :destroy, :create_comment]

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

  def create_comment
    @comment = @booking.comments.new(comment_params)
    p "unchecked comment: #{@comment}"
    if @comment.save
      p "checked comment: #{@comment}"

      render json: @comment
    else
      render json: :status
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
  
  def comment_params
    params.require(:comment).permit(:date, :name, :comment, :booking_id)
  end
end
