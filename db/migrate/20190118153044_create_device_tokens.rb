class CreateDeviceTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :device_tokens do |t|
      t.string :device , default: 'Android'
      t.string :token
      t.references :user
      t.timestamps
    end
  end
end
