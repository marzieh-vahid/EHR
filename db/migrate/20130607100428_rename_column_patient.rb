class RenameColumnPatient < ActiveRecord::Migration
  def up
 


rename_column :patients, :doctorid, :doctor_id
 end

  def down
  end
end
