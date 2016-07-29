module Achievements
  class MilestoneSerializer < ActiveModel::Serializer
    type :milestone
    
    attributes :id, :title, :description, :completed_at, :created_at
    has_one :challange
  end
end
