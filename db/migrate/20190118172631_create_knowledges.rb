class CreateKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :knowledges do |t|
      t.string :topic , default: ''
      t.references :user
      t.timestamps
    end
  end
end
