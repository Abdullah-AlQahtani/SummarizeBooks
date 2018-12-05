class AddUserIdToAudioSummary < ActiveRecord::Migration[5.2]
  def change
    add_column :audio_summaries, :user_id, :integer
  end
end
