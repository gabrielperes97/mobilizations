class UsuarioMoreDefaultValues < ActiveRecord::Migration[5.1]
  def change
    change_column :usuarios, :level, :integer, :default => 0
    change_column :usuarios, :admin_level, :integer, :default => 0
    change_column :usuarios, :level, :integer, :null => false
    change_column :usuarios, :admin_level, :integer, :null => false
  end
end
