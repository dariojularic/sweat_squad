class Request < ApplicationRecord
  belongs_to :user
  belongs_to :sport_event
end
