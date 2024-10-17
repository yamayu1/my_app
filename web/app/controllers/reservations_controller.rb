class ReservationsController < ApplicationController
  def index
    @date = params[:start_date].present? ? Date.parse(params[:start_date]) : Date.today
    start_date = @date.beginning_of_month.beginning_of_week
    end_date = @date.end_of_month.end_of_week
    @reservations = Reservation.all # 必要に応じて、実際の予約データを取得するロジックに置き換えてください
  end
  def new
    @reservation = Reservation.new
    @day = params[:day]
    @time = params[:time]
    @start_time = DateTime.parse(@day + " " + @time + " " + "JST")
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path(@reservation), notice: '予約が作成されました'
    else
      render :new
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:day, :time, :user_id, :start_time)
  end

end
  