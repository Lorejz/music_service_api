class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :year
      t.string :album_art
      t.integer :total_duration
      t.text :cached_songs

      t.timestamps
    end
  end
end
