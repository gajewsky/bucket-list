# The module responsible for maintaining bucket list
module Achievements
  class Category < ApplicationRecord
    validates :title, presence: true
    
    belongs_to :challange, dependent: :destroy
  end
end
