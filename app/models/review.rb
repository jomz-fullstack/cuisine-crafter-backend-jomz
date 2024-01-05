class Review < ApplicationRecord
  validates :header, :body, :stars, presence: true 
  belongs_to :user
end
