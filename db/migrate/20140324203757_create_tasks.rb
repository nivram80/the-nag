class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :desc
      t.boolean :done
      t.integer :group_id

      t.timestamps
    end
  end
end
