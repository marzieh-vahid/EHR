class CreateEyesystems < ActiveRecord::Migration
  def change
    create_table :eyesystems do |t|
      t.integer :patient_id
      t.boolean :pain
      t.boolean :dryness
      t.boolean :redness
      t.boolean :lossofvision
      t.boolean :doubleorblurredvision

      t.timestamps
    end
  end
end
