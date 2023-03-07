class SportEvent < ApplicationRecord
  SPORTS = ["array of sports"]
  belongs_to :user
  has_many :users, through: :requests
  has_many :reviews
  has_many :messages, dependent: :destroy
  validates :address, presence: true
  validates :start_at, presence: true
  validates :sport, presence: true
  validates :sport, inclusion: { in: SPORTS }
end
