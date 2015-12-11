class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :name_or_title
      t.string :publication_or_publisher
      t.date :publication_date
      t.string :publication_url
      t.string :description
      
      t.timestamps null: false
    end
  end
end
