class Card < ActiveRecord::Base
  has_many :usercards, dependent: :destroy
  has_many :users, through: :usercards
end
