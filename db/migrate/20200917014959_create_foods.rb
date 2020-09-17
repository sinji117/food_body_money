class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.references :user, foreign_key: true
      t.string :product
      t.integer :calorie
      t.integer :price
      t.text :ingredient
      t.text :explanation
      t.timestamps
    end
  end
end
