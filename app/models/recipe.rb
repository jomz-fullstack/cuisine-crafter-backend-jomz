class Recipe < ApplicationRecord
  validates :name, :image, :instructions, :ingredients, :protein, :nutrition, presence: true 
end
