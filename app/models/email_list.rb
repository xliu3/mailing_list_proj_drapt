class EmailList < ActiveRecord::Base
	belongs_to :user_account
	belongs_to :mailing_list
end
