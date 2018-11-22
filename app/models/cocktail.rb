class Cocktail < ApplicationRecord
  validates :name, uniqueness: true, presence: true, allow_blank: false
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # has_one :doses, through: :ingredients

end
