# The module responsible for maintaining bucket list
class Category < ApplicationRecord
  validates :title, presence: true
  has_many :challanges
end
