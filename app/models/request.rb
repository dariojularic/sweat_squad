class Request < ApplicationRecord
  belongs_to :user
  belongs_to :sport_event
  validates :message, presence: true
  # validates :user_id, uniqueness: {
  #  scope: :sport_event_id,
  #  message: "You have already requested to join this event. Wait for the host to accept your request."
  # }
end
