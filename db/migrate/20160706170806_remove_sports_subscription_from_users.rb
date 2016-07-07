class RemoveSportsSubscriptionFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :sports_subscription, :string
  end
end
