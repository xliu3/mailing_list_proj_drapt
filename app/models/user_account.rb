class UserAccount < ActiveRecord::Base
	has_many :email_lists
	has_many :mailing_lists, through: :email_lists

	def add_to_mailing_list(mailing_list)
		els = email_lists.where(mailing_list_id: mailing_list.id, user_account_id: self.id).first_or_create
		els
	end

	def full_name
		return "#{self.usr_first_name} #{self.usr_last_name}"
	end
end
