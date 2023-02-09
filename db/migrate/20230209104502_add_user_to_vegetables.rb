class AddUserToVegetables < ActiveRecord::Migration[6.0]
  def change
    add_reference :vegetables, :user, null: false, foreign_key: true
  end
end
