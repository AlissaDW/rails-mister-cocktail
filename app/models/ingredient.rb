class Ingredient < ApplicationRecord

  NAMES = ["lemon", "ice", "mint leaves"]

  validates :name, presence: true, uniqueness: true
  has_many :doses
  has_many :cocktails, through: :doses

end
