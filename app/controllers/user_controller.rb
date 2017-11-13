class UserController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @email = params[:email]
    @password = params[:password]
    User.create(
      email: @email,
      password: @password
      )
      
      redirect_to :back
  end

  def new
  end

  def show
  end
end
