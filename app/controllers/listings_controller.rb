require "open-uri"

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
        OR listings.category @@ :query
      SQL
      @title = "A Day in the Life results for: #{params[:query]}"
      @listings = Listing.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @listings = Listing.all
    end
    if params[:query].present?
      @listings = Listing.where("title ILIKE ?", "%#{params[:query]}%")
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
    if @listing.photos.empty?
      image = URI.open("https://res.cloudinary.com/daiq2cytf/image/upload/v1677682678/Screenshot_2023-03-01_at_14.52.11_kfkg4f.png")
      @listing.photos.attach(io: image, filename: "#{image}.png", content_type: "image/png")
      @listing.save
    end
    if @listing.save
      redirect_to listing_path(@listing)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    # No need for app/views/restaurants/update.html.erb
    redirect_to listing_path(@listing)
  end

  def edit
    @listing = Listing.find(params[:id])
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
