class SportEvent < ApplicationRecord
  SPORTS = %w[Football Basketball Tennis Golf Volleyball TableTennis Badminton Darts Squash Beerpong]
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :users, through: :requests
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :requests, dependent: :destroy
  validates :address, presence: true
  validates :start_at, presence: true
  validates :sport, presence: true
  validates :sport, inclusion: { in: SPORTS }
  has_one_attached :photo

  def city_name
    address.split(",").first
  end

end
