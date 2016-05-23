class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :user_id
      t.integer :reagent_id
      t.float :quantity
      t.string :measurement

      t.timestamps null: false
    end
  end
end
