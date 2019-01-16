class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :name , default: ''
    	t.string :email
    	t.string :address , default: ''
    	t.integer :gender
    	t.string :first_language , default: 'english'
    	t.string :second_language , default: ''
    	t.string :dob
		t.timestamps
    end
  end
end
