class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.references :user, index: true
      t.references :reference_a, polymorphic: true, index: true
      t.references :reference_b, polymorphic: true, index: true
      
      t.timestamps null: false
    end
  end
end
