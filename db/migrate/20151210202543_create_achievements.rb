class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name_or_title
      # t.string :occupation
      t.references :experience
      # t.string :issuer
      t.string :proof_of_concept
      t.date :achievement_date
      t.string :description
      
      t.timestamps null: false
    end
  end
end
