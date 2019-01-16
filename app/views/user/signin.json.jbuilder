json.user do
	json.name @user.name
	json.email @user.email
	json.address @user.address
	json.gender @user.gender.capitalize
	json.first_language @user.first_language
	json.second_language @user.second_language
	json.date @user.dob.to_date
	json.token @user.access_token
end