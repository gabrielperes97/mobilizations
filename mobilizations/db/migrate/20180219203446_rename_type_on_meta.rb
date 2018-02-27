class RenameTypeOnMeta < ActiveRecord::Migration[5.1]
  def change
    rename_column :meta, :type, :meta_type
  end
end
