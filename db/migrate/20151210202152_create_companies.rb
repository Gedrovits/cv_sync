class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name_or_title
      t.string :location
      t.integer :industry_or_market
      
      t.timestamps null: false
    end
  end
end
