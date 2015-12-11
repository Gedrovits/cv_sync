class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :full_name
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :age
      t.date :birth_date
      t.integer :gender
      t.integer :marital_status
      
      t.integer :privacy
      
      t.timestamps null: false
    end
  end
end
