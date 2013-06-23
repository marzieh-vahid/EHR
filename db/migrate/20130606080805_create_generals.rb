class CreateGenerals < ActiveRecord::Migration
  def change
    create_table :generals do |t|
      t.boolean :weightgain
      t.boolean :weightloss
      t.boolean :fatigue
      t.boolean :weakness
      t.boolean :fever
      t.boolean :nightsweats
      t.integer :patientID

      t.timestamps
    end
  end
end
