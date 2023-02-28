class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_many :reviews

  validates :date, :price, presence: true
end
