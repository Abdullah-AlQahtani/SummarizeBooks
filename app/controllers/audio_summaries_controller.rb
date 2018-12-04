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
    # @audio_summary = AudioSummary.new(Audio_Summary)
  end
end
