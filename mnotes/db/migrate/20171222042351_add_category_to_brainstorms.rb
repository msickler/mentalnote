class AddCategoryToBrainstorms < ActiveRecord::Migration[5.1]
  def change
    add_column :brainstorms, :category, :string 
  end
end
