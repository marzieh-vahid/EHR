class Skin < ActiveRecord::Base
  attr_accessible :colorchangesofhandssorfeed, :hairloss, :nodules, :patientID, :rash, :redness

  belongs_to :patient


validates :patientID, presence: true
  default_scope order: 'skins.created_at DESC'



end