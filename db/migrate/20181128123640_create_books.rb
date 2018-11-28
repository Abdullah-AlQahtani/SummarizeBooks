class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :bookName
      t.string :bookDescription
      t.integer :bookYear
      t.string :bookAuther

      t.timestamps
    end
  end
end
