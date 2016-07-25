# The module responsible for maintaining bucket list
module Achievements
  class Category < ApplicationRecord
    validates :title, presence: true

    has_many :challanges
  end
end
