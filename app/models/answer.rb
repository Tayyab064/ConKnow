class Answer < ApplicationRecord

	belongs_to :question
	belongs_to :ans_by , class_name: 'User'

end
