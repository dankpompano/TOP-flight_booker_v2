class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @flights = Flight.where(departure_airport: params[:departure_airport]) if params[:departure_airport].present?
    @flights = Flight.where(arrival_airport: params[:arrival_airport]) if params[:arrival_airport].present?
    @flights = Flight.where(start: params[:start]) if params[:start].present?
    @flights = Flight.where(duration: params[:duration]) if params[:duration].present?
  end

  def results
  end

  private
  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :start, :duration)
  end
end
