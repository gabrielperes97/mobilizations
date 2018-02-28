class TabelaVotos < ActiveRecord::Migration[5.1]
  def change
    create_table :votos do |v|
      v.boolean :votos, :null => false 
      v.references :meta, :null => false 
      v.references :usuario, :null => false 
    end
  end
end
