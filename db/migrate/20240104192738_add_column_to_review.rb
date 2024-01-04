class AddColumnToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :recipe_id, :integer
  end
end
