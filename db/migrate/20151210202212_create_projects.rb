class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name_or_title
      t.string :occupation
      t.date :start_date
      t.date :end_date
      t.string :project_url
      t.string :description
      
      t.timestamps null: false
    end
  end
end
