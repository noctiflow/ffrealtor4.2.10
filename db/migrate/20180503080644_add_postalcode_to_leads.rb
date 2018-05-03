class AddPostalcodeToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :postalcode, :string
  end
end
