module Metrics
  # The model represents single beer drunked by user
  class Beer < ApplicationRecord
    validates :untappd_id, presence: true
    validates :name, presence: true
    validates :user_rate, presence: true
    validates :drink_date, presence: true
    belongs_to :user
  end
end
