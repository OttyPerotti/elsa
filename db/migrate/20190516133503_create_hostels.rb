class CreateHostels < ActiveRecord::Migration[5.2]
  def change
    create_table :hostels do |t|
      t.string :name
      t.string :address
      t.string :city_name
      t.integer :user_id
      t.string :type
      t.references :user, foreign_key: true

      # Users can only have multiple hostels if they are owners.
      # !!!!!!!!!!!!!!

      t.timestamps
    end
  end
end
