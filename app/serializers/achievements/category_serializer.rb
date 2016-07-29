module Achievements
  class CategorySerializer < ActiveModel::Serializer
    type :category
    
    attributes :id, :title, :description, :created_at
    has_many :challanges
  end
end
