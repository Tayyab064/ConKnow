class Addansbytypeinanswer < ActiveRecord::Migration[5.0]
  def change
	add_column :answers , :ans_by_type , :string
  end
end
