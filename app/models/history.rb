class History < ActiveRecord::Base
  attr_accessible :accidents, :alcohol, :allergies, :animalcontact, :bloodtransfusion, :fecaloccultblood, :hospitalization, :mammography, :medicalhistoryofthefamily, :occupationalhistory, :othertests, :papsmear, :patientID, :ppd, :smoking, :surgery, :vaccination


validates :patientID, presence: true
end
