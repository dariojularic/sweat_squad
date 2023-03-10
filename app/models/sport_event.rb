class SportEvent < ApplicationRecord
  SPORTS = %w[futsal basketball squash football tennis volleyball badminton table-tennis]
  belongs_to :user
  has_many :users, through: :requests
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :requests, dependent: :destroy
  validates :address, presence: true
  validates :start_at, presence: true
  validates :sport, presence: true
  validates :sport, inclusion: { in: SPORTS }
  # has_one_attached :image
end
