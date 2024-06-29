class Song < ApplicationRecord
  belongs_to :album
  belongs_to :artist
  belongs_to :category

  validates :name, :duration, :genre, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :streams, numericality: { only_integer: true }, default: 0

end
