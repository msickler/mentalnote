class CreateJournals < ActiveRecord::Migration[5.1]
  def change
    create_table :journals do |t|
      t.text :entry
      t.integer :user_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
