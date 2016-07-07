class AddSportsSubscriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sports_subscription, :boolean
  end
end
