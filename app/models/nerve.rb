class Nerve < ActiveRecord::Base
  attr_accessible :dizziness, :faintingorlossofconsciousness, :headaches, :memoryloss, :numbnessortingling, :patientID

validates :patientID, presence: true

belongs_to :patient_ident
  default_scope order: 'nerves.created_at DESC'

end
