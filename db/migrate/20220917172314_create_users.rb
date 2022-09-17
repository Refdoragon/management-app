class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :title, null: false    
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false
      t.datetime :is_all_day, null: false
      t.timestamps
    end
  end
end
