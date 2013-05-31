class RenameColumn < ActiveRecord::Migration
  def up
  	rename_column :Doctors, :neme, :name
  	 

  end


  def down
  end
end
