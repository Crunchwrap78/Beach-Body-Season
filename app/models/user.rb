class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_many :photos
  has_many :posts
  has_many :comments
  has_many :meetings

  def self.from_omniauth(auth)
      where(id: auth.id).first_or_create do |user|
        user.id = auth.id
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
  end
end
