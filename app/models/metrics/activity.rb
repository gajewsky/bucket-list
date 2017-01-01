# The module responsible for maintaining metrics
module Metrics
  # The model represents single activity done by user
  class Activity < ApplicationRecord
    validates :strava_id, presence: true
    validates :name, presence: true
    validates :distance, presence: true
    validates :start_date, presence: true
    belongs_to :user

    def self.by_year(year)
      year = DateTime.new(year)
      where(start_date: year.beginning_of_year..year.end_of_year)
    end
  end
end
