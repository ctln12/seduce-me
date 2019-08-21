class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @chat = Chat.find(params[:chat_id])
    @message.chat = @chat
    @message.seducee_or_seducer = current_user == @chat.game.user
    if @message.save
      ActionCable.server.broadcast("chat_#{@chat.id}", {
        message: @message.to_json
      })
      respond_to do |format|
        format.html { redirect_to chat_path(@chat) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "chats/show" }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
