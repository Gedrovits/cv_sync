class CreateEducationalInstitutions < ActiveRecord::Migration
  def change
    create_table :educational_institutions do |t|
      t.string :name_or_title
      t.integer :education_type
      t.string :location
      t.string :description
      
      t.timestamps null: false
    end
  end
end
