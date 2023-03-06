class SportEvent < ApplicationRecord
  belongs_to :user
  has_many :users, through: :invitations # ???
  has_many :reviews
  has_many :messages, dependent: :destroy
  validates :address, presence: true
  validates :start_at, presence: true
  validates :sport, presence: true
  validates :sport, inclusion: { in: ["array of sports"] } # ???
end
