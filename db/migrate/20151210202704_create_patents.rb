class CreatePatents < ActiveRecord::Migration
  def change
    create_table :patents do |t|
      t.string :patent_office
      t.integer :status
      t.string :application_number_or_license
      t.string :name_or_title
      t.date :issue_filling_date
      t.string :patent_url
      t.string :description
      
      t.timestamps null: false
    end
  end
end
