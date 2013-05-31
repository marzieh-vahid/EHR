class PatientIdent < ActiveRecord::Base
  attr_accessible :daybirth, :family, :fathername, :gender, :mellicode, :monthbirth, :name, :patientID, :yearbirth, :doctorid
end
