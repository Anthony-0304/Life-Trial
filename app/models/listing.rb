class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :title, :category, :description, :price, presence: true
  validates :title, uniqueness: true
end
