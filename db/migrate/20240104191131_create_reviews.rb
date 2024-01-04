class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :header
      t.string :string
      t.text :body
      t.integer :stars

      t.timestamps
    end
  end
end
