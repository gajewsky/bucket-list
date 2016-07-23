module Metrics
  # The service responsible for importing books from goodreads api
  class BooksImportService
    attr_reader :client
    def initialize
      @client = Goodreads::Client.new(
        api_key: System::Settings.goodreads.key,
        api_secret: System::Settings.goodreads.secret
      )
    end

    def call
      page = 1
      loop do
        books = books(page)
        break if books.empty?
        books.each { |book| import_book(book_hash(book)) }
        page += 1
      end
    end

    private

    def books(page)
      client.shelf(System::Settings.goodreads.user_id, 'read', page: page).books
    end

    def import_book(hash)
      return if Book.find_by(goodreads_id: hash[:goodreads_id])
      Book.create(hash)
    end

    def book_hash(response)
      {
        goodreads_id: response.book.id,
        title: response.book.title,
        image_url: response.book.image_url,
        num_pages: response.book.num_pages,
        publication_year: response.book.publication_year,
        average_rating: response.book.average_rating,
        author: response.book.authors.author.name,
        user_rate: response.rating,
        started_at: response.started_at,
        read_at: response.read_at
      }
    end
  end
end
