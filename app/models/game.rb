class Game < ApplicationRecord
  belongs_to :user
  belongs_to :story
  has_one :chat
end
