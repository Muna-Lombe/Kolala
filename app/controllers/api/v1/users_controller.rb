class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: [:show, :profile]
  # resources :users , only: [:index, :create, :show, :update, :destroy]
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def profile
    @bookings = @user.bookings
    @bookings= @bookings.map { |i| i.attributes.symbolize_keys.merge({ room: Room.find(i.room_id) }) }
    render json: {
      bookings: @bookings,
      my_rooms: @user.rooms
    }
  end

  def create
    @new_user = User.new(user_params)
    @new_user.save
    if @new_user.save
      render json: { status: 'success'}
      # render json: @new_booking
    else 
      # render error
    end
  end

  def update
    @user.update(user_params)
    raise
  end

  def destroy
    @user.destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :social_media_link, :avatar_url)
  end
end
