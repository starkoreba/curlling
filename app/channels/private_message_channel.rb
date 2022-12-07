class PrivateMessageChannel < ApplicationCable::Channel
  def subscribed
    chatroom = PrivateMessage.find(params[:id])
    stream_for chatroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
