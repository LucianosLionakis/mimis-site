class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.integer :winetype
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
