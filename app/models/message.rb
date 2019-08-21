class Message < ApplicationRecord
  belongs_to :chat
  validates :content, presence: true, allow_blank: false

  def from_seducer?(some_user)
    chat.game.user == some_user
  end
end
