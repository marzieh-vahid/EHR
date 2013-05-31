class CreatePatientIdents < ActiveRecord::Migration
  def change
    create_table :patient_idents do |t|
      t.string :name
      t.string :family
      t.string :fathername
      t.integer :mellicode
      t.integer :daybirth
      t.integer :monthbirth
      t.integer :yearbirth
      t.string :gender
      t.integer :patientID

      t.timestamps
    end
  end
end
