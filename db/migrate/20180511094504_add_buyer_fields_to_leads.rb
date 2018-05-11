class AddBuyerFieldsToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :cityname, :string
    add_column :leads, :neighbourhood, :string
    add_column :leads, :propertytype, :string
    add_column :leads, :pricemin, :integer
    add_column :leads, :pricemax, :integer
    add_column :leads, :bedrooms, :integer
    add_column :leads, :bathrooms, :integer
    add_column :leads, :buildingage, :integer
  end
end
