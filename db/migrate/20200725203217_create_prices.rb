class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.float :amount
      t.references :meal

      t.timestamps
    end
  end
end
