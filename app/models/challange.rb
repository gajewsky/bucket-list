class Challange < ApplicationRecord
  validates :title, presence: true
  belongs_to :category
  belongs_to :user
  has_many :milestones
end
