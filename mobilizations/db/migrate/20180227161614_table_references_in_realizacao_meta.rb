class TableReferencesInRealizacaoMeta < ActiveRecord::Migration[5.1]
  def change
    rename_column :realizacao_meta, :usuarios_id, :criado_por
    add_reference :realizacao_meta, :usuarios, foreign_key: true
    rename_column :realizacao_meta, :usuarios_id, :aprovado_por
  end
end
