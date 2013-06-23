class General < ActiveRecord::Base
  attr_accessible :fatigue, :fever, :nightsweats, :patientID, :weakness, :weightgain, :weightloss




validates :patientID, presence: true

belongs_to :patient
 default_scope order: 'generals.created_at DESC'
end