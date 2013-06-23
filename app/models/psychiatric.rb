class Psychiatric < ActiveRecord::Base
  attr_accessible :anxiety, :depression, :difficultieswithsexualarousal, :difficultyfallingasleep, :difficultystayingasleep, :excessivewories, :foodcravings, :freguuentcrying, :guiltythoughts, :hallucinations, :irritability, :moodswings, :paranoia, :patientID, :poorappetite, :poorconcentration, :racingthoughts, :rapidspeech, :riskybehavior, :sensitivity, :stress, :thoughtsofsuicide


validates :patientID, presence: true

belongs_to :patient
  default_scope order: 'psychiatrics.created_at DESC'

end
