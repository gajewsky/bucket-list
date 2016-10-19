module Metrics
  # The model represents single book read by user
  class Book < ApplicationRecord
    validates :goodreads_id, presence: true
    validates :title, presence: true
    validates :user_rate, presence: true
    validates :read_at, presence: true
    belongs_to :user

    def self.import
      BooksImportService.new.call
    end
  end
end
