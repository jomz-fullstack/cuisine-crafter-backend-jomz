class Review < ApplicationRecord
  validates :header, :body, :stars, presence: true 
end
