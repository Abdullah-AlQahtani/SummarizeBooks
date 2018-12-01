class AudioSummariesController < ApplicationController
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
  end
end
