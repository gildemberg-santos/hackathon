class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :year
      t.float :price

      t.timestamps
    end
  end
end
