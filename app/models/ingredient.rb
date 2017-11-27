class Ingredient < ApplicationRecord
  has_many :doses
  # has_many :doses, through: :ingredients

  # An ingredient must have a unique name
  validates :name, uniqueness: true


  validates :photo, presence: true
  has_attachment :photo
end

