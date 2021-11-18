class Paper < ApplicationRecord
    validates :title, presence: true
    validates :venue, presence: true
    validates :year,  presence: true, numericality: { only_integer: true }

    scope :year, ->(time) { where("year < ?", year) if time.present? }

    has_and_belongs_to_many :authors
end
