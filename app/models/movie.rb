# The model represents single movie seen by user
class Movie < ApplicationRecord
  validates :imdb_id, presence: true
  validates :title, presence: true
  validates :user_rate, presence: true
  validates :seen_date, presence: true

  # Cals MoviesImportService and save to db all imported imdb movies
  def self.csv_import
    MoviesImportService.new(csv_file).call
  end

  private

  # Return csv file
  def self.csv_file
    ActionDispatch::Http::UploadedFile.new(
      tempfile: File.new(Rails.root + 'spec/fixtures/movie_ratings.csv'),
      type: 'text/csv',
      filename: File.basename(File.new(Rails.root + 'spec/fixtures/movie_ratings.csv'))
    )
  end
end
