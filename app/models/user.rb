class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :listings
  has_many :reviews, through: :bookings

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true
end
