class Song < ApplicationRecord
  has_and_belongs_to_many :albums
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :artists

  validates :name, :duration, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :streams, numericality: { only_integer: true }

  before_validation :set_default_streams

  private

  def set_default_streams
    self.streams ||= 0
  end
end
