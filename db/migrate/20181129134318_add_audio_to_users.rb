class AddAudioToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Audio, :string
  end
end
