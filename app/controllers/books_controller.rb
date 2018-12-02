class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    book = Book.find_by(bookName: params[:id])
    if book
      @book = book
    else
      # @book = Book.find_by(id: params[:id])
      url = "https://www.googleapis.com/books/v1/volumes?q=#{params[:id]}"
      response = HTTParty.get url
      data = response["items"].first
      @book = Book.create(
        bookName: data["volumeInfo"]["title"],
        bookAuther: data["volumeInfo"]["authors"].join(", "),
        bookDescription: data["volumeInfo"]["description"],
        bookYear: data["volumeInfo"]["publishedDate"],
        image: data["volumeInfo"]["imageLinks"]["thumbnail"],
      )
    end
  end

  def new
  end

  def edit
  end
end

# private

#   def book_params
#     params.require(:book).permit(:bookName, :image, :bookDescription, :bookYear, :bookAuther,audio_summary_ids: [])
#   end
# end
