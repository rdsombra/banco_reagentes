class Reagent < ActiveRecord::Base
	has_many :users, through: :inventories
	has_many :inventories
end
