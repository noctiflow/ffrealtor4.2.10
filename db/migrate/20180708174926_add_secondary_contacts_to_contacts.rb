class AddSecondaryContactsToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :secname, :string
    add_column :contacts, :secemail, :string
    add_column :contacts, :secphone, :string
  end
end
