class Album < ApplicationRecord

    has_many :songs

    validates :name, presence: true
    validates :year, presence: true
    validates :total_duration, presence: true, numericality: { only_integer: true }
    validates :cached_songs, presence: true

    def artists
        # Verificar si el álbum tiene canciones asociadas
        if self.songs.any?
        self.songs.map(&:artist).uniq
        else
        []
        end
    end

end