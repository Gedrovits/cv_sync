class CreateCurriculumVitaes < ActiveRecord::Migration
  def change
    create_table :curriculum_vitaes do |t|
      t.integer :current_position_id
      t.integer :previous_position_id
      t.string :what_i_am_looking_for
      t.string :personal_statement_or_summary
      
      t.integer :preferred_industry_or_market
      t.integer :preferred_working_time
      t.integer :preferred_minimum_salary
      t.string :preferred_locations
      
      t.integer :status
      
      t.timestamps null: false
    end
  end
end
