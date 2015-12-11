class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name_or_title
      t.integer :category
      t.integer :level_or_experience
      
      t.timestamps null: false
    end
  end
end
