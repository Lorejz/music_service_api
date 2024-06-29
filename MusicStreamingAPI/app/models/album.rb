class Album < ApplicationRecord

    has_many :songs

    validates :name, presence: true
    validates :year, presence: true
    validates :total_duration, presence: true, numericality: { only_integer: true }
    validates :cached_songs, presence: true
    end