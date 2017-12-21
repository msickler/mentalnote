class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :note
      t.integer :user_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
