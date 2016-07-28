class ChallangeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :completed_at, :created_at
  has_one :category
  has_many :milestones
end
