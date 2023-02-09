class RenamePlaceIdColumnToVegetables < ActiveRecord::Migration[6.0]
  def change
    rename_column :vegetables, :prace_id, :place_id
  end
end
