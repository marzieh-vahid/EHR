class EarSystem < ActiveRecord::Base
  attr_accessible :lossofhearing, :patientID, :ringinginears



validates :patientID, presence: true

belongs_to :patient_ident
  default_scope order: 'ear_systems.created_at DESC'

end
