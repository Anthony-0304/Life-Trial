class Review < ApplicationRecord
  belongs_to :booking

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: 1..5 }
end
