class RemoveColumnFromReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :recipe_id, :integer
  end
end
