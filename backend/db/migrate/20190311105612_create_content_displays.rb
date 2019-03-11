class CreateContentDisplays < ActiveRecord::Migration[5.2]
  def change
    create_table :content_displays do |t|
      t.references :star_item, foreign_key: true
      t.references :station, foreign_key: true
      t.string :level
      t.string :part_code
      t.text :description

      t.timestamps
    end
  end
end
