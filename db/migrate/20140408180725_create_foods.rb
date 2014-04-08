class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :outlet_id
      t.string :description
      t.string :price
      t.string :vegnonveg
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
