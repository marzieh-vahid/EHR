class CreateEarsystems < ActiveRecord::Migration
  def change
    create_table :earsystems do |t|
      t.integer :patient_id
      t.boolean :ringingears
      t.boolean :lossofhearing

      t.timestamps
    end
  end
end
