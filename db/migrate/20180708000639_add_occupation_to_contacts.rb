class AddOccupationToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :occupation, :string
  end
end
