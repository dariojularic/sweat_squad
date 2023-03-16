class Message < ApplicationRecord
  belongs_to :user
  belongs_to :sport_event
  validates :content, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end
end
