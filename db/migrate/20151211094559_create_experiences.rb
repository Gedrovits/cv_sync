class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.references :company
      t.string :occupation
      t.string :description
      t.date :start_date
      t.date :end_date
      t.boolean :ongoing_or_in_progress, default: true
      t.integer :experience_type
      
      t.timestamps null: false
    end
  end
end
