class AddUserIdtoArticles < ActiveRecord::Migration
  def change
    add_column :articles, :user_id, :integer, default: 1
  end
end
