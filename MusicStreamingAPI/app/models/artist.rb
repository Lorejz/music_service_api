class Artist < ApplicationRecord

    has_many :songs

    validates :name, presence: true
    validates :biography, presence: true
    end
