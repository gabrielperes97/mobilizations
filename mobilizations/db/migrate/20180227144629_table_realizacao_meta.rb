class TableRealizacaoMeta < ActiveRecord::Migration[5.1]
  def change
    create_table :realizacao_meta do |r|
      r.text :comentario, :null => false
      r.float :contribuicao, :null => false
      r.references :meta 
      r.references :usuarios, :null => true 
      r.timestamp :aprovado_em
      r.timestamps
    end
  end
end
