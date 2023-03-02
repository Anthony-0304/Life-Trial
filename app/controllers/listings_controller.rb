class ListingsController < ApplicationController
  before_action :set_user, only: %i[new create show]
  before_action :set_booking, only: %i[show]

  def index
    # The code below enables a filtered search
    # There is a listing class method to ensure that if search is nil, all Listings are displayed
    search = params[:search]
    if search.present?
      @title = "Search results for: #{search[:category]}"
      @listings = Listing.where(category: search[:category])
    else
      @title = "All listings"
      @listings = Listing.all
    end
    @my_listings = Listing.where(user_id: current_user.id)
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = @user
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to listings_path, status: :see_other
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_booking
    @booking = Booking.new
  end

  def listing_params
    params.require(:listing).permit(:title, :category, :price, :description, :user_id, :search, photos: [])
  end
end
