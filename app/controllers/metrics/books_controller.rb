class Metrics::BooksController < ApplicationController
  def index
    @metrics_books = Metrics::Book.all
  end

  def show
    @metrics_book = Metrics::Book.find(params[:id])
  end

  def import
    BooksImportService.new(current_user).call
    redirect_to metrics_books_url, notice: 'Books were successfully imported.'
  end
end
