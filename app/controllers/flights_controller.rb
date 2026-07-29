class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @flights = @flights.where(departure_airport_ids: params[:departure_airport_ids]) if params[:departure_airport_ids].present?
    @flights = @flights.where(arrival_airport_ids: params[:arrival_airport_ids]) if params[:arrival_airport_ids].present?
    @flights = @flights.where(start: params[:start]) if params[:start].present?
    @flights = @flights.where(duration: params[:duration]) if params[:duration].present?
  end

  def results
    @flights = Flight.all
    @flights = @flights.where(departure_airport_ids: params[:departure_airport_ids]) if params[:departure_airport_ids].present?
    @flights = @flights.where(arrival_airport_ids: params[:arrival_airport_ids]) if params[:arrival_airport_ids].present?
    @flights = @flights.where(start: params[:start]) if params[:start].present?
    @flights = @flights.where(duration: params[:duration]) if params[:duration].present?
  end

  private
  def flight_params
    params.require(:flight).permit(:departure_airport, :arrival_airport, :start, :duration)
  end
end
