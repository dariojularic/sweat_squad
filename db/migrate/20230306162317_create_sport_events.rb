class CreateSportEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :sport_events do |t|
      t.string :address
      t.text :description
      t.datetime :start_at
      t.float :latitude
      t.float :longitude
      t.string :sport
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
