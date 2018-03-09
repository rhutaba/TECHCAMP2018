class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def search
    @books = Book.where('title LIKE(?)', "%#{params_search_keyword}%")
  end

  private
  def params_search_keyword
    params[:search_keyword]
  end
end
