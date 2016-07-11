# The model represents single book read by user
class Book < ApplicationRecord
  validates :goodreads_id, presence: true
  validates :title, presence: true
  validates :user_rate, presence: true
  validates :read_at, presence: true

  def self.import
    BooksImportService.new.call
  end
end
