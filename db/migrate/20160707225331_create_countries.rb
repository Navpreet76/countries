class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :total_strength
      t.integer :aircraft
      t.integer :armored_vehicles

      t.timestamps null: false
    end
  end
end
