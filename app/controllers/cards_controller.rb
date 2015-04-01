class CardsController < ApplicationController
  before_action :current_user 

  require 'mandrill'
  # mandrill = Mandrill::API.new ENV["MANDRILL_APIKEY"]

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
      redirect_to @card
    else
      redirect_to @user
    end 

  end

  def show
    # @templateCard = Card.find_by_id(params[:template])
    @card = Card.find(params[:id])
    # @user = User.find(params[:user_id])
  end

  def sendmail
    @card = Card.find(params[:id])
    render :sendmail
  end

  def email
    # @card = Card.find(params[:id])
    # require 'mandrill'  
    # m = Mandrill::API.new
    m = Mandrill::API.new ENV["MANDRILL_APIKEY"]
    send_to_email = params[:email]
    # m = Mandrill::API.new
   #  message = {
   #  :subject=> "You got an E_card!",
   # :from_name=> "E_card_Designs",
   # :to=> [email:"aparna.sainath@gmail.com"],
   # :html=>"<html><h1>ssfdfdf</h1></html>",
   #  }

  message = {  
   :subject=> "Hello from the Mandrill API",  
   :from_name=> "E_card_Designs",
   :text=>"Hi message, how are you?",  
   :to=>[  
     {  
       :email=> send_to_email,  
       :name=> "Recipient1"  
     }  
   ],  
   :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",  
   :from_email=>"test@test.com"  
  }  
  sending = m.messages.send message
  puts sending

flash[:alert] =  "Message Sent!"
redirect_to user_path(@current_user)

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
