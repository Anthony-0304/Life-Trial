class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_user, only: %i[new create show]
  before_action :set_booking, only: %i[show]

  def index
    # The code below enables a filtered search
    # There is a listing class method to ensure that if search is nil, all Listings are displayed
    search = params[:search]
    if search.present?
      @title = "A Day in the Life results for: #{search[:category]}"
      @listings = Listing.where(category: search[:category])
    else
      @title = "A Day in the Life of..."
      @listings = Listing.all
    end

    if params[:query].present?
      sql_query = <<~SQL
        listings.title @@ :query
        OR listings.description @@ :query
      SQL
      @listings = Listing.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @listings = Listing.all
    end
    @my_listings = Listing.where(user_id: current_user.id) if user_signed_in?
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
