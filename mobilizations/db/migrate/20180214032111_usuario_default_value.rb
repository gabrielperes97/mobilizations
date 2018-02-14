class UsuarioDefaultValue < ActiveRecord::Migration[5.1]
  def change
    change_column :usuarios, :points, :integer, :default => 0
  end
end
