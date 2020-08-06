class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.integer :drinktype
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
