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
#

class Food < ActiveRecord::Base
	belongs_to :outlet
	belongs_to :user
	belongs_to :cuisine
end
