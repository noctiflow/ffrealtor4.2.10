class AddStageToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :stage, :string
  end
end
