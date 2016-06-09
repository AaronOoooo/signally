class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :city
      t.string :state
      t.string :email
      t.string :subscriptions
      t.boolean :admin
      t.time :update_frequency

      t.timestamps null: false
    end
  end
end
