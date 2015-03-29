class Usercard < ActiveRecord::Base
  belongs_to :user 
  belongs_to :card

  validates :user_id, uniqueness: {scope: :card_id}
end
