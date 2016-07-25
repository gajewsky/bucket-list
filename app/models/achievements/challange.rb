module Achievements
  class Challange < ApplicationRecord
    validates :title, presence: true

    belongs_to :category
    has_many :milestones
  end
end
