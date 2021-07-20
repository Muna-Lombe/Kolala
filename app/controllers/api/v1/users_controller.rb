class Api::V1::UsersController < Api::V1::BaseController
  before_action :set_user, only: [:show]
  # def login
  #   @login = params[:id]
  # end
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def profile
    
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
