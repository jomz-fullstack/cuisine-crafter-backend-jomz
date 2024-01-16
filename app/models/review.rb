class Review < ApplicationRecord
  validates :header, :body, :stars, :user_id, presence: true 
  belongs_to :user
end
