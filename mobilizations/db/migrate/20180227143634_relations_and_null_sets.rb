class RelationsAndNullSets < ActiveRecord::Migration[5.1]
  def change
    change_table :meta do |t|
      t.references :usuarios
    end
    change_column :meta, :unity, :string, :null => false

  end
end
