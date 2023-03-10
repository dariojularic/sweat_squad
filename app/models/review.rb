class Review < ApplicationRecord
  belongs_to :user
  belongs_to :sport_event
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :content, presence: true
end
