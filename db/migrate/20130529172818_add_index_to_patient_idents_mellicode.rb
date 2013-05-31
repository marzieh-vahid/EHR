class AddIndexToPatientIdentsMellicode < ActiveRecord::Migration
  def change
 
add_index :patient_idents, :mellicode, unique: true
 end
end
