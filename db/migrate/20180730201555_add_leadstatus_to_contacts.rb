class AddLeadstatusToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :leadstatus, :string
  end
end
