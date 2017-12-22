class RemoveTypeFromBrainstorms < ActiveRecord::Migration[5.1]
  def change
    remove_column :brainstorms, :type 
  end
end
