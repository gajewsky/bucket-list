module Metrics
  # The model represents single movie seen by user
  class Movie < ApplicationRecord
    validates :imdb_id, presence: true
    validates :title, presence: true
    validates :user_rate, presence: true
    validates :seen_date, presence: true
    belongs_to :user

    def self.by_year(year)
      year = DateTime.new(year)
      where(seen_date: year.beginning_of_year..year.end_of_year)
    end
  end
end
