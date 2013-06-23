class CreateEyeSystems < ActiveRecord::Migration
  def change
    create_table :eye_systems do |t|
      t.boolean :pain
      t.boolean :redness
      t.boolean :lossofvision
      t.boolean :doubleorblurredvision
      t.boolean :dryness
      t.integer :patientID

      t.timestamps
    end
  end
end
