class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flat = Flat.find(params[:flat_id])
    @booking.user = current_user
    if @booking.save
      redirect_to flat_booking_path(@booking.flat, @booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.save
    redirect_to bookings_index_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_index_path
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival, :departure, :user, :flat)
  end


end
