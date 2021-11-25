class RoomsController < ApplicationController
  def index
    @user = current_user
    @rooms = Room.where(user_id: @user.id)
  end

  def new
    @user = current_user
    @room=Room.new
  end

  def create
    @user = current_user
    @room=Room.new(rooms_params)
    
    if @room.save
      flash[:notice] = "ルームを新規登録しました"
      redirect_to room_path(@room)
    else
      flash.now[:alert] = "ルームを登録できませんでした"
      render new_room_path
    end
  end

  def show
    @user = current_user
    @room=Room.find(params[:id])
    @reservation=Reservation.new
    @reservations = Reservation.where(user_id: @room.id) 
  end

  def search
    if params[:keyword].present?
      @rooms = Room.where('address LIKE? OR room_name LIKE? OR introduction LIKE?', "%#{params[:keyword]}%", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
    else
      @rooms = Room.all
    end
  end

end

private
def rooms_params
  params.require(:room).permit(:room_name, :introduction, :address, :price, :image, :user_id)
end
