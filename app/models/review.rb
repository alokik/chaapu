# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  comment    :text
#  food_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Review < ActiveRecord::Base
	belongs_to :food
	belongs_to :user

	def self.add_review(user_id, comment, food_id)
		u = User.find(user_id)
		rev = u.reviews.new
		rev.comment = comment
		rev.food_id = food_id
		if rev.save
			return true
		else
			return false
		end
	end
end
