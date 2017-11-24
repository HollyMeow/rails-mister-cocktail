class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # A dose must have a description
  validates :description, presence: true

  # A dose must have a cocktail
  validates :cocktail_id, presence: true

  # A dose must have a ingredient
  validates :ingredient_id, presence: true

  # [cocktail, ingredient] pairings should be unique
  validates :cocktail_id, uniqueness: {
    scope: :ingredient_id,
    message: "T'as déjà mi cet ingrédient bro !"
  }

end
