class AddVeganToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :vegan, :boolean
  end
end
