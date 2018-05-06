class AddLeadstatusToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :leadstatus, :string
  end
end
