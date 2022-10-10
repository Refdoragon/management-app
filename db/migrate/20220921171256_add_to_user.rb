class AddToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :memo, :text
    add_column :users, :all_day, :boolean, null: true
  end
end
