class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name_or_title
      
      t.timestamps null: false
    end
  end
end
