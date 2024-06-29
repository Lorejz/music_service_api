
class Song < ApplicationRecord
  belongs_to :album
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :categories

  validates :name, :duration, presence: true
  validates :duration, numericality: { only_integer: true }
  validates :streams, numericality: { only_integer: true }

  before_validation :set_default_streams

  private

  def set_default_streams
    self.streams ||= 0
  end

end
