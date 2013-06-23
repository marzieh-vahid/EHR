class CreatePsychiatrics < ActiveRecord::Migration
  def change
    create_table :psychiatrics do |t|
      t.boolean :depression
      t.boolean :excessivewories
      t.boolean :difficultyfallingasleep
      t.boolean :difficultystayingasleep
      t.boolean :difficultieswithsexualarousal
      t.boolean :poorappetite
      t.boolean :foodcravings
      t.boolean :freguuentcrying
      t.boolean :sensitivity
      t.boolean :thoughtsofsuicide
      t.boolean :stress
      t.boolean :irritability
      t.boolean :poorconcentration
      t.boolean :racingthoughts
      t.boolean :hallucinations
      t.boolean :rapidspeech
      t.boolean :guiltythoughts
      t.boolean :paranoia
      t.boolean :moodswings
      t.boolean :anxiety
      t.boolean :riskybehavior
      t.integer :patientID

      t.timestamps
    end
  end
end
