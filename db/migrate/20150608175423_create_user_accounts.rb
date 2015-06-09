class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.string :usr_first_name, limit: 30
	  t.string :usr_last_name, limit: 30
	  t.string :user_email

      t.timestamps null: false
    end
  end
end
