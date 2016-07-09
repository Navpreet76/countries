class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
      t.string :name
      t.string :designation
      t.integer :numbers_built

      t.timestamps null: false
    end
  end
end
