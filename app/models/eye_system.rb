class EyeSystem < ActiveRecord::Base
  attr_accessible :doubleorblurredvision, :dryness, :lossofvision, :pain, :patientID, :redness

validates :patientID, presence: true
belongs_to :patient_ident
  default_scope order: 'eye_systems.created_at DESC'

end
