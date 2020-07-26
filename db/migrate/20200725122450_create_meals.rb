class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :title
      t.integer :mealtype
      t.boolean :vegeterian
      
      t.timestamps
    end
  end
end
