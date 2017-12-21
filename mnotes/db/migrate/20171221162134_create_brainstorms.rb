class CreateBrainstorms < ActiveRecord::Migration[5.1]
  def change
    create_table :brainstorms do |t|
      t.string :idea
      t.integer :user_id
      t.string :type
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
