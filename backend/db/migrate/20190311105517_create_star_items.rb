class CreateStarItems < ActiveRecord::Migration[5.2]
  def change
    create_table :star_items do |t|
      t.string :name
      t.json :details

      t.timestamps
    end
  end
end
