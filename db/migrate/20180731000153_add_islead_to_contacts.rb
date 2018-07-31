class AddIsleadToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :islead, :string
  end
end
