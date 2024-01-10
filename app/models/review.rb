class Review < ApplicationRecord
  validates :header, :body, :stars, :user_id, :recipe_id, presence: true 
  belongs_to :user
  belongs_to :recipe
end
