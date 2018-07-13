class AddDealDateToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :desireddeal, :string
  end
end
