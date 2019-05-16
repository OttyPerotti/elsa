class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :beds
      t.string :type
      t.integer :hostel_id
      t.boolean :availability
      t.references :hostel, foreign_key: true

      t.timestamps
    end
  end
end
