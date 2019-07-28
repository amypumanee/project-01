class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.text :name
      t.text :image
      t.integer :event_id

      t.timestamps
    end
  end
end
