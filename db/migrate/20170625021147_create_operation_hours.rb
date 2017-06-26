class CreateOperationHours < ActiveRecord::Migration[5.1]
  def change
    create_table :operation_hours do |t|
      t.integer :store_id
      t.integer :day, default: 0
      t.time :open_time
      t.time :closing_time
      t.boolean :closed, default: false
      t.timestamps
    end
    add_index :operation_hours, :store_id
  end
end
