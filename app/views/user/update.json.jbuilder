json.user do
	json.name @current_user.name
	json.address @current_user.address
	json.gender @current_user.gender.capitalize
	json.first_language @current_user.first_language
	json.second_language @current_user.second_language
	json.date @current_user.dob.to_date
end