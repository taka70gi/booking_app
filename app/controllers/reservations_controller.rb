class ReservationsController < ApplicationController
  def index 
    @user = current_user
    @reservations = Reservation.where(user_id: @user.id)
    @rooms = Room.all
  end

  def new
    @user = current_user
    @reservation = Reservation.find(params[:id])
    @room = Room.find(@reservation[:room_id])
  end

  def create
    @user = current_user
    @reservation = Reservation.new(reservations_params)
    @room = Room.find(reservations_params[:room_id])

    if @reservation.save
      redirect_to edit_reservation_path(@reservation)
    else
      flash[:alert] = "予約できませんでした"
      redirect_to room_path(@room)
    end
  end

  def show
    @user = current_user
    @reservation = Reservation.find(params[:id])
    @room = Room.find(@reservation[:room_id])  
  end

  def edit
    @user = current_user
    @reservation = Reservation.find(params[:id])
    @room = Room.find(@reservation[:room_id]) 
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservations_params)
      flash[:notice] = "予約完了しました"
      redirect_to reservation_path(@reservation) 
    end
  end

  def destroy
  end
end

private
def reservations_params
  params.require(:reservation).permit(:start_on, :end_on, :people_num, :user_id, :room_id, :all_price)
end