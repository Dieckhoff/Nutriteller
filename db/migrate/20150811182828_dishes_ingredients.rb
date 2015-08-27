class DishesIngredients < ActiveRecord::Migration
  def change
    create_table :dishes_ingredients, :id => false do |t|
      t.integer :dish_id
      t.integer :ingredient_id
    end
  end
end
