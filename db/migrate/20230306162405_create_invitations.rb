class CreateInvitations < ActiveRecord::Migration[7.0]
  def change
    create_table :invitations do |t|
      t.boolean :accepted
      t.references :user, null: false, foreign_key: true
      t.references :sport_event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
