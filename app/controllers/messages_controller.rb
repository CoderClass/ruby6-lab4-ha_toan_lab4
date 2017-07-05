class MessagesController < ApplicationController

  before_action :room

  def index
  end

  def create
    @message = @room.messages.build(message_param)
    @message.username = current_user
    if @message.save
      flash[:success] = "Create message success"
      redirect_to room_messages_path(@room)
    else
      flash.now[:error] = "Cannot create message"
      render "index"
    end
  end

  private
  def room
    @room = Room.find(params[:room_id])
  end

  def message_param
    params.require(:message).permit(:username, :content)
  end
end
