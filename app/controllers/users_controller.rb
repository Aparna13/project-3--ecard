class UsersController < ApplicationController
  before_action :check_login, :require_user

  def index
    @user = User.find(params[:user_id])

    unless @user.first_name
    @user.first_name = @user.name.split(" ")[0]
    @user.last_name = @user.name.split(" ")[1]
    end
    @cards = @user.cards
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  private

    def check_login
    if session[:user_id] == nil
    redirect_to root_path, notice: "Please log in"
    end
end
end
