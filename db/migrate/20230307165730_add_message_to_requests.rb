class AddMessageToRequests < ActiveRecord::Migration[7.0]
  def change
    add_column :requests, :message, :string
  end
end
