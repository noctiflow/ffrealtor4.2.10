class AddBuysellToLeads < ActiveRecord::Migration
  def change
    add_column :leads, :buysell, :string
  end
end
