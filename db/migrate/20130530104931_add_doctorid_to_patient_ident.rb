class AddDoctoridToPatientIdent < ActiveRecord::Migration
  def change
    add_column :patient_idents, :doctorid, :integer
  end
end
