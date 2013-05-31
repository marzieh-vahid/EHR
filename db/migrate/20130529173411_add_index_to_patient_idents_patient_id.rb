class AddIndexToPatientIdentsPatientId < ActiveRecord::Migration
  def change

add_index :patient_idents, :patientID, unique: true
  end
end
