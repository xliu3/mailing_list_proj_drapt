require 'test_helper'

class MailingListsControllerTest < ActionController::TestCase
  setup do
    @mailing_list = mailing_lists(:one)
    #@user_account = user_accounts(:one)
    @update = {
      name: 'UMass Parking Service test',
      description: 'Members of Umass Parking Service Department'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mailing_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mailing_list" do    
    assert_difference('MailingList.count') do
      post :create, mailing_list: @update
    end

    assert_redirected_to mailing_list_path(assigns(:mailing_list))
  end

  test "should show mailing_list" do
    get :show, id: @mailing_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mailing_list
    assert_response :success
  end

  test "should update mailing_list" do
    #or use put???
    put :update, id: @mailing_list, mailing_list: @update
    assert_redirected_to mailing_list_path(assigns(:mailing_list))
  end

  test "should destroy mailing_list" do
    assert_difference('MailingList.count', -1) do
      delete :destroy, id: @mailing_list
    end

    assert_redirected_to mailing_lists_path
  end

end
