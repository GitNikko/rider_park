class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :address
      t.float :lat
      t.float :lng
      t.integer :spaces

      t.timestamps
    end
  end
end
