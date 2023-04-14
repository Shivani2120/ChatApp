class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat"
  end

  # def receive(data)
  #   ActionCable.server.broadcast('chat_room_channel', data)
  # end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
