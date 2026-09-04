class PassengerMailer < ApplicationMailer
  default from: "notifications@example.com"

  def confirmation_email(passenger)
    @passener = params[:passener]
    mail(to: @passenger.email, subject: "Booking Confirmation")
  end
end
