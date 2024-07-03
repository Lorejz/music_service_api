class DropAlbumsSongsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :Albums_Songs
  end
end
