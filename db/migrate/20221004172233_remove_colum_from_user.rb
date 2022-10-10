class RemoveColumFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :is_all_day, :datetime, null: false
  end
end
