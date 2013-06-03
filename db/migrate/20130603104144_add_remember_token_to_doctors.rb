class AddRememberTokenToDoctors < ActiveRecord::Migration
  def change

  	add_column :doctors, :remember_token, :string
    add_index  :doctors, :remember_token
  end
end
