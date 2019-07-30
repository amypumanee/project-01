class CreateAttends < ActiveRecord::Migration[5.2]
  def change
    create_table :attends do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :otp_secret_key

      t.timestamps
    end
  end
end
