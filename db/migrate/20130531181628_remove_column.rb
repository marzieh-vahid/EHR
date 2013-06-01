class RemoveColumn < ActiveRecord::Migration
  def up
  	remove_column :doctor, :pass, :passconfirm
  end


  def down
  end
end
