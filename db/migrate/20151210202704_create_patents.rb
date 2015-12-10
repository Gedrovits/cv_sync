class CreatePatents < ActiveRecord::Migration
  def change
    create_table :patents do |t|

      t.timestamps null: false
    end
  end
end
