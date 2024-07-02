class RemoveArtistFromSongs < ActiveRecord::Migration[7.1]
  def change
    remove_reference :songs, :artist, null: false, foreign_key: true
  end
end
