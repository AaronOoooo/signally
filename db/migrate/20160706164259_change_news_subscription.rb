class ChangeNewsSubscription < ActiveRecord::Migration
  def change
    change_column :users, :news_subscription, :boolean
  end
end
