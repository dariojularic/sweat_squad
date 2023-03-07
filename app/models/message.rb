class Message < ApplicationRecord
  belongs_to :user
  belongs_to :sport_event
  validates :content, presence: true
end
