class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :hometown

      t.timestamps
    end
  end
end
