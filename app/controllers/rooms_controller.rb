class RoomsController < ApplicationController

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      flash[:error] = "error"
      redirect_to root_path
    end
  end

  private
  def room_params
    params.require(:room).permit(:name)
  end
end
