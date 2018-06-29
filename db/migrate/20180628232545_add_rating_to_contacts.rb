class AddRatingToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :rating, :integer, :null => false, :default => 0
  end
end
