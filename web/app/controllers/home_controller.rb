class HomeController < ApplicationController
  def index
    @reservations = Reservation.all
    @date = params[:start_date].try(:to_date) || Date.today
  end
end
