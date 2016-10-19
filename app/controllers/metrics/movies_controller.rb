class Metrics::MoviesController < ApplicationController
  def index
    @metrics_movies = Metrics::Movie.where(user: current_user)
  end

  def show
    @metrics_movie = Metrics::Movie.find(params[:id])
  end

  # Cals MoviesImportService and save to db all imported imdb movies
  def import
    MoviesImportService.new(csv_file, current_user).call
    redirect_to metrics_movies_url, notice: 'Movies were successfully imported.'
  end

  private

  # Return csv file
  def csv_file
    ActionDispatch::Http::UploadedFile.new(
      tempfile: File.new(Rails.root + 'spec/fixtures/movie_ratings.csv'),
      type: 'text/csv',
      filename: File.basename(File.new(Rails.root + 'spec/fixtures/movie_ratings.csv'))
    )
  end
end
