class CreateJoinTableArtistSong < ActiveRecord::Migration[6.1]
  def change
    create_join_table :artists, :songs do |t|
      t.index :artist_id
      t.index :song_id
    end
  end
end
