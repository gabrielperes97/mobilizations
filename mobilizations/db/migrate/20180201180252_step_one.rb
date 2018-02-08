class StepOne < ActiveRecord::Migration[5.1]
  def change
  	create_table :usuario do |u|
  		u.string :name, :null => false
  		u.string :email, :null => false
  		u.string :password, :null => false
  		u.integer :points, :null => false
  		u.integer :level
  		u.integer :admin_level

  		u.timestamps
  	end

  	create_table :meta do |m|
  		m.string :title, :null => false
  		m.text :description, :null => false
  		#0=porpused 1=actived 2=actived_by_admin 3=rejected 4=closed_by_conclused 5=time_is_over
  		m.integer :status, :null => false
  		m.integer :type, :null => false
  		#Limite da meta
  		m.float :limit
  		#prazo
  		m.timestamp :time_limit

  		m.timestamp :aproved_at
  		m.timestamp :closed_at

  		m.timestamps
  	end

    add_foreign_key :meta, :usuario
  end

end
