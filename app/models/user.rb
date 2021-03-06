class User < ActiveRecord::Base
  has_many :usercards, dependent: :destroy
  has_many :cards, through: :usercards
  # validates :name, presence: true


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth (auth)
    create! do |user|
      user = User.new
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.email = auth["info"]["email"]
    end
  end
end
