class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.boolean :redness
      t.boolean :rash
      t.boolean :nodules
      t.boolean :hairloss
      t.boolean :colorchangesofhandssorfeed
      t.integer :patientID

      t.timestamps
    end
  end
end
