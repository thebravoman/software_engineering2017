class CreateSubscriptionUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_users do |t|
      t.reference :user_id
      t.reference :subscription_id
      t.integer :role

      t.timestamps
    end
  end
end
