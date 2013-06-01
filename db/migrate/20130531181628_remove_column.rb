class RemoveColumn < ActiveRecord::Migration
  def up
  	remove_column :doctors, :pass, :passconfirm
  end


  def down
  end
end
