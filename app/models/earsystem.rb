class Earsystem < ActiveRecord::Base
  attr_accessible :lossofhearing, :patient_id, :ringingears

belongs_to :patient

  default_scope order: 'earsystems.created_at DESC'



end
