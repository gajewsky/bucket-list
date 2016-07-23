module Achievements
  class Milestone < ApplicationRecord
    validates :title, presence: true

    belongs_to :challange, dependent: :destroy
  end
end
