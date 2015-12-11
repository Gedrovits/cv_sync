class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :name_or_title
      t.string :authority
      t.string :license
      t.string :url
      t.date :start_date
      t.date :end_date
      t.boolean :is_this_cert_expires, default: true
      
      t.timestamps null: false
    end
  end
end
