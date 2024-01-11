class Recipe < ApplicationRecord
  validates :name, :image, :instructions, :ingredients, :protein, :nutrition, presence: true 
  has_many :reviews
end
