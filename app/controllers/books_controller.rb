class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
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
