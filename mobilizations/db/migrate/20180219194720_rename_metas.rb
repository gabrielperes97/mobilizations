class RenameMetas < ActiveRecord::Migration[5.1]
  def change
    rename_table :metas, :meta
  end
end
