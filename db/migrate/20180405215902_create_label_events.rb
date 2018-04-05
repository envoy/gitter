class CreateLabelEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :label_events do |t|
      t.integer :pull_request_id, null: false
      t.string :event, null: false
      t.string :label_name
      t.timestamps
    end
    add_index :label_events, [:pull_request_id, :created_at]
  end
end
