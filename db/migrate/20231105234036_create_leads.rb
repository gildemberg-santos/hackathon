class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :country
      t.string :state
      t.string :city
      t.integer :age
      t.string :sex
      t.string :communication_channel
      t.string :source_of_acquisition
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
