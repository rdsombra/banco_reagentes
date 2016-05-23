class RemoveQuantityFromReagents < ActiveRecord::Migration
  def change
  	remove_column :reagents, :quantity
  end
end
