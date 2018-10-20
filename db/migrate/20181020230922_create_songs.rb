class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.references :artist, foreign_key: true
      t.references :album, foreign_key: true
      t.text :lyrics

      t.timestamps
    end
  end
end
