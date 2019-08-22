class Message < ApplicationRecord
  belongs_to :chat
  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  def from?(some_user)
    chat.game.user == some_user
  end

  def broadcast_message
    ActionCable.server.broadcast("chat_#{chat.id}", {
      message_partial: ApplicationController.renderer.render(partial: "messages/message",
      locals: { message: self, user_is_messages_author: false }
      ),
      current_user_id: seducer
    })
  end
end
