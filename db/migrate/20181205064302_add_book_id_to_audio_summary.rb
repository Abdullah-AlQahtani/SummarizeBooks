class AddBookIdToAudioSummary < ActiveRecord::Migration[5.2]
  def change
    add_column :audio_summaries, :book_id, :integer
  end
end
