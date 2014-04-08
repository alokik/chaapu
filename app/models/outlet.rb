# == Schema Information
#
# Table name: outlets
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  city_id        :integer
#  building       :string(255)
#  street_address :string(255)
#  pincode        :string(255)
#  landmark       :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Outlet < ActiveRecord::Base
	belongs_to :city
	has_many :foods
end
