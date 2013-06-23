class Muscle < ActiveRecord::Base
  attr_accessible :jointpain, :jointswelling, :muscleweakness, :numbness, :patientID



validates :patientID, presence: true

belongs_to :patient_ident
  default_scope order: 'muscle.created_at DESC'

end
