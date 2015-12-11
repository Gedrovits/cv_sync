class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.references :education_institution
      t.string :degree_or_qualification
      t.string :field_of_study
      t.string :gpa
      t.string :grade
      t.string :description
      t.date :start_date
      t.date :end_date
      t.integer :status

      t.timestamps null: false
    end
  end
end
