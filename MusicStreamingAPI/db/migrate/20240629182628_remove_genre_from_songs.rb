class RemoveGenreFromSongs < ActiveRecord::Migration[6.1]
  def change
    remove_column :songs, :genre, :string
  end
end
