class CreateOutlets < ActiveRecord::Migration
  def change
    create_table :outlets do |t|
      t.string :name
      t.integer :city_id
      t.string :building
      t.string :street_address
      t.string :pincode
      t.string :landmark

      t.timestamps
    end
  end
end
