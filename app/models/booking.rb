class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  belongs_to :review

  validates :date, :price, presence: true
end
