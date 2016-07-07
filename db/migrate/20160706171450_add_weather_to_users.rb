class AddWeatherToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weather, :boolean
  end
end
