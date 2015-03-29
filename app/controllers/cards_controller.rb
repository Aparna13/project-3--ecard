class CardsController < ApplicationController
  before_action :find_user_id, only: [:create, :destroy]
  def index
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.users << @user_id

    if @card.save
      redirect_to @user
    else
      redirect_to @user
    end 

  end

  def show
  end

  def edit
  end

  private 
  def find_user_id
    @user = User.find(params[:user_id])
  end
  def card_params
    params.require(:card).permit(:title, :image_url, :desc, :is_shareable) 
  end
end
