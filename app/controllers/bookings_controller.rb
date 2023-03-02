class BookingsController < ApplicationController
  before_action :set_user, only: %i[new create index]
  before_action :set_listing, only: %i[new create show]

  def index
    @bookings = Booking.all
    @my_bookings = Booking.where(user_id: current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.listing = @listing
    @booking.price = @listing.price
    if @booking.save
      redirect_to bookings_path
    else
      render "listings/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :price, :user_id, :listing_id)
  end
end
