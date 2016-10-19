class User < ApplicationRecord
  include Clearance::User
  has_many :challanges
  has_many :activities, class_name: 'Metrics::Activity'
  has_many :beers, class_name: 'Metrics::Beer'
  has_many :books, class_name: 'Metrics::Book'
  has_many :movies, class_name: 'Metrics::Movie'
end
