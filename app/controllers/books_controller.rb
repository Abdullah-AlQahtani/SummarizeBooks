class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    book = Book.find_by(google_id: params[:id])
    @audio_summary = AudioSummary.new
    if book
      @book = book
    else
      # @book = Book.find_by(id: params[:id])
      url = "https://www.googleapis.com/books/v1/volumes?q=#{params[:id]}"
      response = HTTParty.get url
      data = response["items"].first
      @book = Book.create(
        google_id: params[:id],
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


def save_file
  audio = params[:audio]
  save_path = Rails.root.join("book/#{audio.original_filename}")

    audio.rewind
    # Open and write the file to file system.
  File.open(save_path, 'wb') do |f|
    f.write audio.read
  end

  render :text=> 'hi'
end

# private

#   def book_params
#     params.require(:book).permit(:bookName, :image, :bookDescription, :bookYear, :bookAuther,audio_summary_ids: [])
#   end
# end
