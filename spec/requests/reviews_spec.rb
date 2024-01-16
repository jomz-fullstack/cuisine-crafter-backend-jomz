require 'rails_helper'

RSpec.describe "Reviews", type: :request do
  describe "POST / create" do
    let!(:user) { User.create(email: "test@example.com", password: "password") }
    let!(:recipe) { Recipe.create(name: "Sample Recipe", image: "sample.jpg", instructions: "Sample instructions", ingredients: "Sample ingredients", protein: "Sample protein", nutrition: "Sample nutrition") }

    it 'creates a review' do
      review_params = {
        review: {
          header: "Best food ive had in a long time",
          body: "would come back again!",
          stars: 5,
          user_id: user.id,
        }
      }

      post '/reviews', params: review_params

      created_review = Review.first
      expect(created_review.header).to eq 'Best food ive had in a long time'
      expect(created_review.body).to eq 'would come back again!'
      expect(created_review.stars).to eq 5
      expect(created_review.user_id).to eq user.id

      expect(response).to have_http_status(:created)
    end
  end
end
