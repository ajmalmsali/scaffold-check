class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :identifier
      t.string :prox_min
      t.string :prox_max
      t.string :prox_med
      t.references :building, index: true

      t.timestamps
    end
  end
end
