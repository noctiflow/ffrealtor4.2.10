class AddBuysellToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :buysell, :string
  end
end
