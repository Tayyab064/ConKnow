class User < ApplicationRecord
	validates_presence_of :email
	has_secure_token :access_token

	has_many :device_tokens
	has_many :knowledges
	has_many :questions
	has_many :answers , as: 'ans_by'

  	enum gender: [:male, :female]

  	before_save do |us|
  		us.first_language.downcase!
  		us.second_language.downcase!
  	end
end
