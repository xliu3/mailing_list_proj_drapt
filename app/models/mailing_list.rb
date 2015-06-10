class MailingList < ActiveRecord::Base
	has_many :email_lists, dependent: :destroy

	validates :name, :description, presence: true
	validates :name, uniqueness: true

	def recepients
		emails ||= []
		els = email_lists.where(mailing_list_id: self.id)
	   els.all.each do |el|
	     emails << el.user_account.user_email
	   end
	  emails
	end
end
