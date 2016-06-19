class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :articles, :type, :kind
  end
end
