class Message < ApplicationRecord
  belongs_to :chat
  validates :content, presence: true, allow_blank: false
end
