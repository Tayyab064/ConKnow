class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :ans , default: ''
      t.integer :ans_by_id
      t.references :question
      t.timestamps
    end
  end
end
