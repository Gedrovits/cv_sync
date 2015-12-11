class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name_or_title
      t.integer :category
      t.integer :proficiency
      
      t.timestamps null: false
    end
  end
end
