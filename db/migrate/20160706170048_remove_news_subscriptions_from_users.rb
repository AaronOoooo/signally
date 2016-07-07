class RemoveNewsSubscriptionsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :news_subscription, :string
  end
end
