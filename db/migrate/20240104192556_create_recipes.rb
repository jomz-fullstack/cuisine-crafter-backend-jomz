class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :image
      t.text :instructions
      t.string :protein
      t.text :ingredients
      t.string :nutrition

      t.timestamps
    end
  end
end
