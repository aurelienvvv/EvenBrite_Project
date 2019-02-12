class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  after_create :welcome_send #-> Envoie un mail après la création d'un user

  has_many :attendances
  has_many :events, through: :attendances
  has_many :events

 def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end