class Artist < ApplicationRecord

    has_and_belongs_to_many :songs

    validates :name, presence: true
    validates :biography, presence: true
    end
