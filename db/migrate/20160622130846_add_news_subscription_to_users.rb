class AddNewsSubscriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :news_subscription, :string
  end
end
