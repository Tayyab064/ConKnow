class DeviceToken < ApplicationRecord

	belongs_to :user

	before_save do |ds|
		ds.device.capitalize!
	end

end
