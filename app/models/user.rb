class User < ApplicationRecord
	validates_presence_of :email
	has_secure_token :access_token
  	enum gender: [:male, :female]

  	before_save do |us|
  		us.first_language.downcase!
  		us.second_language.downcase!
  	end
end
