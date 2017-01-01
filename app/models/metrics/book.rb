module Metrics
  # The model represents single book read by user
  class Book < ApplicationRecord
    validates :goodreads_id, presence: true
    validates :title, presence: true
    validates :user_rate, presence: true
    validates :read_at, presence: true
    belongs_to :user

    def self.by_year(year)
      year = DateTime.new(year)
      where(read_at: year.beginning_of_year..year.end_of_year)
    end
  end
end
