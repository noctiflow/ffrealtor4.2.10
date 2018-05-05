class AddStarttimeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :start_time, :datetime
    add_column :tasks, :end_time, :datetime
    add_column :tasks, :description, :string
  end
end
