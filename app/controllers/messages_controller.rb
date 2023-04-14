class MessagesController < ApplicationController
    
    def create
        message = Message.create(params[:message].permit!)
        ActionCable.server.broadcast "chat", { 
          message: MessagesController.render(
            partial: 'message', 
            locals: { message: message }
          ).squish 
        }
    #   @message = Message.new(content: params[:message][:content])
    #    if @message.save 
    #     ActionCable.server.broadcast('chat_room_channel', @message)
    #     redirect_to chat_room_index_path
    #    else
    #     render :new
    #    end
    end

end
