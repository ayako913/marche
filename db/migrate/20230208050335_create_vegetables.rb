class CreateVegetables < ActiveRecord::Migration[6.0]
  def change
    create_table :vegetables do |t|
      t.string :vegetable,   null: false
      t.integer :price,      null: false
      t.integer :guantity,   null: false
      t.integer :prace_id,   null: false
      t.text :text
      t.timestamps
    end
  end
end