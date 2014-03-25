class AddDueToEvents < ActiveRecord::Migration
  def change
    add_column :events, :due, :date
  end
end
