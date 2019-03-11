class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :operation_sequence

      t.timestamps
    end
  end
end
