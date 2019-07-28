class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :title
      t.datetime :date
      t.text :image
      t.text :address
      t.text :info
      t.integer :location_id

      t.timestamps
    end
  end
end
