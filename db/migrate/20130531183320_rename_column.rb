class RenameColumn < ActiveRecord::Migration
  def up
  	rename_column :doctors, :neme, :name
  	 

  end


  def down
  end
end
