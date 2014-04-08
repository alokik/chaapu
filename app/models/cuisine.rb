# == Schema Information
#
# Table name: cuisines
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Cuisine < ActiveRecord::Base
	has_many :foods

end
