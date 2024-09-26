# class ReservationsController < ApplicationController
#     def create
#       @reservation = Reservation.new(reservation_params)
#       @reservation.user_id = current_user.id 
  
#       if @reservation.save
#         render json: { message: '予約が完了しました', reservation: @reservation }, status: :created
#       else
#         render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
#       end
#     end
  
#     def your_trips
#       Rails.logger.debug "Current User: #{current_user.inspect}"
#       @trips = current_user.reservations.order(date: :asc)
  
#       respond_to do |format|
#         format.html # your_trips.html.erb をレンダリング
#         format.json { render json: @trips } # JSONフォーマットでもレスポンスを返す
#       end
#     end
  
#     private
  
#     def reservation_params
#       params.require(:reservation).permit(:date)
#     end
#   end
class ReservationsController < ApplicationController
  before_action :authenticate_user!

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

  def destroy
    @reservation = current_user.reservations.find_by(id: params[:id])
    
    if @reservation
      if @reservation.destroy
        respond_to do |format|
          format.html { 
            flash[:notice] = "予約を削除しました。"
            redirect_to your_trips_reservations_path
          }
          format.json { render json: { success: true, message: "予約を削除しました。" } }
        end
      else
        respond_to do |format|
          format.html { 
            flash[:alert] = "予約の削除に失敗しました。"
            redirect_to your_trips_reservations_path
          }
          format.json { render json: { success: false, message: "予約の削除に失敗しました。" }, status: :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { 
          flash[:alert] = "予約が見つかりません。"
          redirect_to your_trips_reservations_path
        }
        format.json { render json: { success: false, message: "予約が見つかりません。" }, status: :not_found }
      end
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
  