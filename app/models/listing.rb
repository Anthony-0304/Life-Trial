class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?

  validates :title, :category, :description, :price, presence: true
  validates :title, uniqueness: true

  # def self.search(search)
  #   if search
  #     listing = Listing.find_by(category: search)
  #     if listing
  #       self.where(listing_id: listing)
  #     else
  #       Listing.all
  #     end
  #   else
  #     Listing.all
  #   end
  # end
end
