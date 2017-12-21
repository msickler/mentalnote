class CreateBucketlists < ActiveRecord::Migration[5.1]
  def change
    create_table :bucketlists do |t|
      t.string :item
      t.integer :user_id
      t.string :type
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
