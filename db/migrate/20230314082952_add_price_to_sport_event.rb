class AddPriceToSportEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :sport_events, :price, :integer
  end
end
