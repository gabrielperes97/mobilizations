class ChageToPlural < ActiveRecord::Migration[5.1]
  def change
    rename_table :usuario, :usuarios
    rename_table :meta, :metas
  end
end
