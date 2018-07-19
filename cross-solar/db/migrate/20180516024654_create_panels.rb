class CreatePanels < ActiveRecord::Migration[5.1]
  def change
    create_table :panels do |t|
      t.string :serial
      t.decimal :latitude, precision: 8, scale: 6
      t.decimal :longitude, precision: 9, scale: 6
      t.string :brand

      t.timestamps
    end
  end
end
