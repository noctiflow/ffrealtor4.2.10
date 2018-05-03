class AddUnitToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :unit, :string
  end
end
