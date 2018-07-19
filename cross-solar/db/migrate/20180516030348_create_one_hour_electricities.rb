class CreateOneHourElectricities < ActiveRecord::Migration[5.1]
  def change
    create_table :one_hour_electricities do |t|
      t.bigint :panel_id
      t.bigint :kilowatts
      t.datetime :hour

      t.timestamps
    end
  end
end
