class CreateReagents < ActiveRecord::Migration
  def change
    create_table :reagents do |t|
      t.string :name
      t.string :formula
      t.string :quantity

      t.timestamps null: false
    end
  end
end
