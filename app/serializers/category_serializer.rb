class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at
  has_many :challanges
end