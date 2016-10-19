# The module responsible for maintaining metrics
module Metrics
  # The model represents single activity done by user
  class Activity < ApplicationRecord
    validates :strava_id, presence: true
    validates :name, presence: true
    validates :distance, presence: true
    validates :start_date, presence: true
    belongs_to :user
  end
end
