class RemoveWeatherFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :weather, :string
  end
end
