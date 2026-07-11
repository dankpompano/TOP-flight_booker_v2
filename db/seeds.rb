  # This file should ensure the existence of records required to run the application in every environment (production,
  # development, test). The code here should be idempotent so that it can be executed at any point in every environment.
  # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
  #
  # Example:
  #
  #   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
  #     MovieGenre.find_or_create_by!(name: genre_name)
  #   end

  den = Airport.find_or_create_by!(code: "DEN")
  jfk = Airport.find_or_create_by!(code: "JFK")
  ind = Airport.find_or_create_by!(code: "IND")
  bos = Airport.find_or_create_by!(code: "BOS")
  atl = Airport.find_or_create_by!(code: "ATL")

  Flight.find_or_create_by!(
    departure_airport_id: jfk.id,
    arrival_airport_id: bos.id,
    start: Time.zone.parse("2026-07-11 14:30:00"),
    duration: 17.0
  )

  Flight.find_or_create_by!(
    departure_airport_id: atl.id,
    arrival_airport_id: bos.id,
    start: Time.zone.parse("2026-07-11 14:30:00"),
    duration: 16.0
  )

  Flight.find_or_create_by!(
    departure_airport_id: ind.id,
    arrival_airport_id: bos.id,
    start: Time.zone.parse("2026-07-11 14:30:00"),
    duration: 15.0
  )

  Flight.find_or_create_by!(
    departure_airport_id: den.id,
    arrival_airport_id: bos.id,
    start: Time.zone.parse("2026-07-11 14:30:00"),
    duration: 14.0
  )
