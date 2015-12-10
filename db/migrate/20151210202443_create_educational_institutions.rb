class CreateEducationalInstitutions < ActiveRecord::Migration
  def change
    create_table :educational_institutions do |t|

      t.timestamps null: false
    end
  end
end
