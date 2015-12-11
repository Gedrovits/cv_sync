class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :name_or_title
      t.string :description
      t.string :proof_of_concept
      
      t.timestamps null: false
    end
  end
end
