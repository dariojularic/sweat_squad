class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :sport_event
  # default value for accepted is false
  # after_initialize :set_defaults
  # def set_defaults
  #   accepted = false
  # end
end
