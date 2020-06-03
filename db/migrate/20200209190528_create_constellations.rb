class CreateConstellations < ActiveRecord::Migration[6.0]
  def change
    create_table :constellations do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
