class AddFieldsToLead < ActiveRecord::Migration[7.0]
  def change
    add_column :leads, :income, :float
    add_column :leads, :years_employment, :integer
    add_column :leads, :marital_status, :string
    add_column :leads, :have_children, :boolean, default: false
    add_column :leads, :bank_score, :integer
    add_column :leads, :already_have_a_vehicle, :boolean, default: false
  end
end
