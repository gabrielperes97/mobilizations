class DefaultValuesOnMetas < ActiveRecord::Migration[5.1]
  def change
    change_column :meta, :status, :integer, :default => 0
    change_column :meta, :type, :integer, :default => 0
  end
end
