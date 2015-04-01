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
    @users = User.all
    @user = User.find(params[:id])
    @cards = []
    uniq_image_urls = Card.all.pluck(:image_url).uniq
    
    uniq_image_urls.each do |image_url|
      @cards << Card.find_by_image_url(image_url) 
    end
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
