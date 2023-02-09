class RenameGuantityColumnToVegetables < ActiveRecord::Migration[6.0]
  def change
    rename_column :vegetables, :guantity, :quantity
  end
end
