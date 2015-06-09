class CreateEmailLists < ActiveRecord::Migration
  def change
    create_table :email_lists do |t|
      t.integer :user_account_id
      t.integer :mailing_list_id
      t.timestamps null: false
    end
  end
end
