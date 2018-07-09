class AddDesireddealToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :desireddeal, :string
  end
end
