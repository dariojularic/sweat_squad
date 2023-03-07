class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sport_events, dependent: :destroy
  has_many :invitations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy
  # validates :first_name, presence: true, length: { minimum: 2 }
  # validates :last_name, presence: true, length: { minimum: 2 }
  validates :username, presence: true, uniqueness: { message: "already exists" }, length: { minimum: 2 }
end
