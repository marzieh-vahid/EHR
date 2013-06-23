class Eyesystem < ActiveRecord::Base
  attr_accessible :doubleorblurredvision, :dryness, :lossofvision, :pain, :redness, :patient_id

belongs_to :patient, :foreign_key => 'patient_id'
  default_scope order: 'eyesystems.created_at DESC'
end
