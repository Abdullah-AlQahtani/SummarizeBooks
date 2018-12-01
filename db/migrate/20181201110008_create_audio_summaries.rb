class CreateAudioSummaries < ActiveRecord::Migration[5.2]
  def change
    create_table :audio_summaries do |t|
      t.string :audio

      t.timestamps
    end
  end
end
