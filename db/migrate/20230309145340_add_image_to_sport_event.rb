class AddImageToSportEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :sport_events, :image, :string
  end
end
