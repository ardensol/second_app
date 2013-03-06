require 'test_helper'

class BoxrequestsControllerTest < ActionController::TestCase
  setup do
    @boxrequest = boxrequests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boxrequests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boxrequest" do
    assert_difference('Boxrequest.count') do
      post :create, boxrequest: { customer_id: @boxrequest.customer_id, date_sent: @boxrequest.date_sent, followed_up: @boxrequest.followed_up, request_date: @boxrequest.request_date, requesttype: @boxrequest.requesttype }
    end

    assert_redirected_to boxrequest_path(assigns(:boxrequest))
  end

  test "should show boxrequest" do
    get :show, id: @boxrequest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boxrequest
    assert_response :success
  end

  test "should update boxrequest" do
    put :update, id: @boxrequest, boxrequest: { customer_id: @boxrequest.customer_id, date_sent: @boxrequest.date_sent, followed_up: @boxrequest.followed_up, request_date: @boxrequest.request_date, requesttype: @boxrequest.requesttype }
    assert_redirected_to boxrequest_path(assigns(:boxrequest))
  end

  test "should destroy boxrequest" do
    assert_difference('Boxrequest.count', -1) do
      delete :destroy, id: @boxrequest
    end

    assert_redirected_to boxrequests_path
  end
end
