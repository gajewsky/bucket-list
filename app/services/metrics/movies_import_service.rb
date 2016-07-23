# The module responsible for maintaining metrics
module Metrics
  # The service responsible for importing movies from imdb csv file
  class MoviesImportService
    attr_reader :uploaded_file

    def initialize(uploaded_file)
      @uploaded_file = uploaded_file
    end

    def call
      return false unless uploaded_file.content_type.in? %w(text/csv text/comma-separated-values)
      parse_csv.map { |movie_hash| import_movie(movie_hash) }
    end

    private

    def import_movie(hash)
      return if Movie.find_by(imdb_id: hash[:const])
      Movie.create(movie_hash(hash))
    end

    def parse_csv
      csv = uploaded_file.read
      parsed_csv = CSV.new(csv, headers: true, header_converters: :symbol)
      parsed_csv.to_a.map(&:to_hash)
    end

    def movie_hash(hash)
      {
        imdb_id: hash[:const],
        title: hash[:title],
        director: hash[:directors],
        user_rate: hash[:you_rated],
        imdb_rate: hash[:imdb_rating],
        runtime: hash[:runtime_mins],
        year: hash[:year],
        genres: hash[:genres],
        url: hash[:url],
        seen_date: hash[:created]
      }
    end
  end
end
