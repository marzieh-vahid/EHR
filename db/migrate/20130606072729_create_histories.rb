class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :patientID
      t.boolean :hospitalization
      t.boolean :surgery
      t.boolean :bloodtransfusion
      t.text :accidents
      t.text :allergies
      t.boolean :smoking
      t.boolean :alcohol
      t.boolean :vaccination
      t.boolean :ppd
      t.boolean :papsmear
      t.boolean :mammography
      t.boolean :fecaloccultblood
      t.text :othertests
      t.text :occupationalhistory
      t.boolean :animalcontact
      t.text :medicalhistoryofthefamily

      t.timestamps
    end
  end
end
