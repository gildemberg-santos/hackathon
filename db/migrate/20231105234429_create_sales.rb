class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.integer :amount
      t.boolean :sold
      t.references :vehicle, null: false, foreign_key: true
      t.references :lead, null: false, foreign_key: true

      t.timestamps
    end
  end
end
