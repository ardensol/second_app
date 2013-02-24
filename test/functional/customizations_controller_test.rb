require 'test_helper'

class CustomizationsControllerTest < ActionController::TestCase
  setup do
    @customization = customizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customization" do
    assert_difference('Customization.count') do
      post :create, customization: { customization: @customization.customization, product_id: @customization.product_id }
    end

    assert_redirected_to customization_path(assigns(:customization))
  end

  test "should show customization" do
    get :show, id: @customization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customization
    assert_response :success
  end

  test "should update customization" do
    put :update, id: @customization, customization: { customization: @customization.customization, product_id: @customization.product_id }
    assert_redirected_to customization_path(assigns(:customization))
  end

  test "should destroy customization" do
    assert_difference('Customization.count', -1) do
      delete :destroy, id: @customization
    end

    assert_redirected_to customizations_path
  end
end
