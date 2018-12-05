class AudioSummariesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @audio_summaries = AudioSummary.all
  end

  def new
  end

  def show
    @audio_summary = AudioSummary.find_by(id: params[:id])
  end

  def edit
  end

  def create
    @audio_summary = AudioSummary.new(audio_params)
    @audio_summary.user_id = current_user.id
    book = Book.find_by(google_id: params["audio_summary"]["book_id"])
    @audio_summary.book_id = book.id

    @audio_summary.valid?
    puts "************ "
    puts @audio_summary.errors.full_messages
    puts "************ "

    @audio_summary.save
    render json: @audio_summary
  end

  private

  def audio_params
    params.require(:audio_summary).permit(:audio, :book_id, :user_id)
  end
end
