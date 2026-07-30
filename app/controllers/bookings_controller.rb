class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @passengers = Passenger.find[:flight_id]
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def show
    @booking = Booking.find(params[:id])
  end


  private
  def booking_params
    params.require(:flight_id, passenger: [ :name, :email ])
  end
end
