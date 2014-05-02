# == Schema Information
#
# Table name: foods
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  outlet_id   :integer
#  description :string(255)
#  price       :string(255)
#  vegnonveg   :string(255)
#  cuisine_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class Food < ActiveRecord::Base
	belongs_to :outlet
	belongs_to :user
	belongs_to :cuisine
	has_many :reviews
	
	def self.add_food(user, name, outlet_id, description, price, vegnonveg, cuisine_id)
		f = user.foods.new
		f.name = name
		f.outlet_id = outlet_id
		f.description = description
		f.price = price
		f.vegnonveg = vegnonveg
		f.cuisine_id = cuisine_id
		if f.save 
			return true,f
		else
			return false
		end
	end
	
end
