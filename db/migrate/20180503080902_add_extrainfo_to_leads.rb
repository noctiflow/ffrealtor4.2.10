class AddExtrainfoToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :extrainfo, :text
  end
end
