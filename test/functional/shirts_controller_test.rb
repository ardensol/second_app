require 'test_helper'

class ShirtsControllerTest < ActionController::TestCase
  setup do
    @shirt = shirts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shirts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shirt" do
    assert_difference('Shirt.count') do
      post :create, shirt: { bottom: @shirt.bottom, collar: @shirt.collar, contrast_area: @shirt.contrast_area, contrast_color: @shirt.contrast_color, cuffs: @shirt.cuffs, fit: @shirt.fit, monongram: @shirt.monongram, placket: @shirt.placket, pocket: @shirt.pocket, price: @shirt.price, quantity: @shirt.quantity, shirt_name: @shirt.shirt_name }
    end

    assert_redirected_to shirt_path(assigns(:shirt))
  end

  test "should show shirt" do
    get :show, id: @shirt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shirt
    assert_response :success
  end

  test "should update shirt" do
    put :update, id: @shirt, shirt: { bottom: @shirt.bottom, collar: @shirt.collar, contrast_area: @shirt.contrast_area, contrast_color: @shirt.contrast_color, cuffs: @shirt.cuffs, fit: @shirt.fit, monongram: @shirt.monongram, placket: @shirt.placket, pocket: @shirt.pocket, price: @shirt.price, quantity: @shirt.quantity, shirt_name: @shirt.shirt_name }
    assert_redirected_to shirt_path(assigns(:shirt))
  end

  test "should destroy shirt" do
    assert_difference('Shirt.count', -1) do
      delete :destroy, id: @shirt
    end

    assert_redirected_to shirts_path
  end
end
