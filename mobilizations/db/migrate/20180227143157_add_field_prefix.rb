class AddFieldPrefix < ActiveRecord::Migration[5.1]
  def change
    add_column :meta, :unity, :string
  end
end
