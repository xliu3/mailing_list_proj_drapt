require 'test_helper'

class MailingListTest < ActiveSupport::TestCase
  fixtures :mailing_lists
  # test "the truth" do
  #   assert true
  # end

  test "mailing_list attributes must not be empty" do
  	mailing_list = MailingList.new
  	assert mailing_list.invalid?
  	assert mailing_list.errors[:name].any?
  	assert mailing_list.errors[:description].any?
  end

  test "mailing_list is not valid without a unique name" do
  	mailing_list = MailingList.new(name: mailing_lists(:mail).name,
  								   description: "xxx")
  	assert mailing_list.invalid?
  	assert_equal ["has already been taken"], mailing_list.errors[:name]
  end
end
