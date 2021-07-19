class UserController < ApplicationController
  def login
    @login = params[:id]
  end
end
