class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :all_day, :default => false

      t.timestamps
    end
  end
end
