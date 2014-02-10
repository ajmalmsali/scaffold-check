class CreateRestrooms < ActiveRecord::Migration
  def change
    create_table :restrooms do |t|
      t.integer :numbered
      t.string :typ
      t.references :building, index: true

      t.timestamps
    end
  end
end
