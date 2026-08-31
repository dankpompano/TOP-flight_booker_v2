class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @booking.passengers.new
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end


  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :id, :name, :email ])
  end
end
