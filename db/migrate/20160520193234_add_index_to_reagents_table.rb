class AddIndexToReagentsTable < ActiveRecord::Migration
  def change
  	change_table :reagents do |t|
  		t.belongs_to :user, index: true
  	end
  end
end
