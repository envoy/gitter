class CreatePullRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :pull_requests do |t|
      t.integer :github_id, null: false, index: true, unique: true
      t.string :status, null: false
      t.string :name, null: false
      t.text :body
      t.string :author
      t.timestamps
    end
  end
end
