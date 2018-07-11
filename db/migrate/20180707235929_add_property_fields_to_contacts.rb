class AddPropertyFieldsToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :address, :string
    add_column :contacts, :postalcode, :string
    add_column :contacts, :neighbourhood, :string
    add_column :contacts, :price, :integer
    add_column :contacts, :bedrooms, :integer
    add_column :contacts, :unit, :string
    add_column :contacts, :city, :string
    add_column :contacts, :propertytype, :string
    add_column :contacts, :buildingage, :integer
    add_column :contacts, :bathrooms, :integer
  end
end
