class CreateEats < ActiveRecord::Migration[6.0]
  def change
    create_table :eats do |t|
      t.string :store_name, null: false
      t.string :address, null: false
      t.string :menu, null: false
      t.integer :price, null: false
      t.integer :quantity, null: false
      t.text :text
      t.timestamps
    end
  end
end
