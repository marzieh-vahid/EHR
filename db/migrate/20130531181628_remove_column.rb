class RemoveColumn < ActiveRecord::Migration
  def up
  	remove_column :Doctors, :pass, :passconfirm
  end


  def down
  end
end
