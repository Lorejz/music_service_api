class RemoveAlbumIdFromSongs < ActiveRecord::Migration[7.1]
  def change
    remove_column :songs, :album_id, :integer
  end
end
