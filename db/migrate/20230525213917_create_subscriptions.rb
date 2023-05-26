class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :subscriber
      t.belongs_to :owner

      t.timestamps
    end
  end
end
