class CardsController < ApplicationController
  before_action :find_user_id, only: [:create, :destroy]
  def index
  end

  def new
    @templateCard = Card.find_by_id(params[:template])
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.users << @user
    # @card.update(image_url: params[:image_url])
    
    if @card.save
      redirect_to @user
    else
      redirect_to @user
    end 

  end

  def show
    @card = Card.find(params[:id])
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
