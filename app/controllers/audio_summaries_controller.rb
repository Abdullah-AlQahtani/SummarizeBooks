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
    @audio_summary.save
    render json: @audio_summary
  end

  private

  def audio_params
    params.require(:audio_summary).permit(:audio)
  end
end
