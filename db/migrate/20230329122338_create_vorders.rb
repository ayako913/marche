class CreateVorders < ActiveRecord::Migration[6.0]
  def change
    create_table :vorders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :vegetable, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.integer :totalprice, null: false
      t.timestamps
    end
  end
end
