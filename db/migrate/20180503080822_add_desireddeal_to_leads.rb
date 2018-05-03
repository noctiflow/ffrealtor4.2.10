class AddDesireddealToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :desireddeal, :date
  end
end
