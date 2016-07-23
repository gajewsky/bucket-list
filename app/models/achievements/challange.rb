module Achievement
  class Challange < ApplicationRecord
    validates :title, presence: true
    
    has_many :categories
    has_many :milestones
  end
end
