class MilestoneSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :completed_at, :created_at
  has_one :challange
end
