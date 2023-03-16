class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sport_events, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :requested_sport_events, through: :requests, source: :sport_event
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy
  # validates :first_name, presence: true, length: { minimum: 2 }
  # validates :last_name, presence: true, length: { minimum: 2 }
  validates :username, presence: true, uniqueness: { message: "already exists" }, length: { minimum: 2 }
  # validates :about_me, length: { minimum: 30, maximum: 150 }
  has_one_attached :photo

  def review_given?(sport_event)
    Review.where(user: self, sport_event: sport_event).exists?
  end
end
