class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name_or_title
      t.string  :contact_url
      t.integer :contact_type
      t.string  :description
      t.integer :status
      t.integer :privacy
      
      t.timestamps null: false
    end
  end
end
