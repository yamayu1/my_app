class ReservationsController < ApplicationController
    def create
      @reservation = Reservation.new(reservation_params)
      @reservation.user_id = current_user.id 
  
      if @reservation.save
        render json: { message: '予約が完了しました', reservation: @reservation }, status: :created
      else
        render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def your_trips
      Rails.logger.debug "Current User: #{current_user.inspect}"
      @trips = current_user.reservations.order(date: :asc)
  
      respond_to do |format|
        format.html # your_trips.html.erb をレンダリング
        format.json { render json: @trips } # JSONフォーマットでもレスポンスを返す
      end
    end
  
    private
  
    def reservation_params
      params.require(:reservation).permit(:date)
    end
  end
  