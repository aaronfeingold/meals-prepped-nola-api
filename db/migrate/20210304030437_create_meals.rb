class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :category
      t.string :description
      t.boolean :vegan
      t.boolean :contains_dairy
      t.boolean :contains_nuts
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
