class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.integer :year, null: false
      t.string :album_art
      t.integer :total_duration, null: false, default: 0
      t.text :cached_songs, null: false, default: "{}"

      t.timestamps
    end
  end
end
