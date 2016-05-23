class AddPrimaryKeyToInventories < ActiveRecord::Migration
  def change
  	add_index :inventories, ["user_id", "reagent_id"], :unique => true
  end
end
