class RemoveSubscriptionsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :subscriptions, :string
  end
end
