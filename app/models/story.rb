class Story < ApplicationRecord
  belongs_to :user
  has_many :games
  has_many :questions
end
