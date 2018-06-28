class AddSecondaryContactsToOpportunities < ActiveRecord::Migration
  def change
    add_column :opportunities, :secname, :string
    add_column :opportunities, :secemail, :string
    add_column :opportunities, :secphone, :string
  end
end
