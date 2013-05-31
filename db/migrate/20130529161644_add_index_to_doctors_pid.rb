class AddIndexToDoctorsPid < ActiveRecord::Migration
  def change
  	 add_index :doctors, :pid, unique: true
  end
end
