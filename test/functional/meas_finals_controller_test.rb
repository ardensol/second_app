require 'test_helper'

class MeasFinalsControllerTest < ActionController::TestCase
  setup do
    @meas_final = meas_finals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meas_finals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meas_final" do
    assert_difference('MeasFinal.count') do
      post :create, meas_final: { belt: @meas_final.belt, chest: @meas_final.chest, crotch: @meas_final.crotch, customer_id: @meas_final.customer_id, hip: @meas_final.hip, jacket_length: @meas_final.jacket_length, knee: @meas_final.knee, neck: @meas_final.neck, pants_length: @meas_final.pants_length, shoulder_width: @meas_final.shoulder_width, sleeve_length: @meas_final.sleeve_length, sleeve_width: @meas_final.sleeve_width, thigh: @meas_final.thigh, waist: @meas_final.waist, wrist: @meas_final.wrist }
    end

    assert_redirected_to meas_final_path(assigns(:meas_final))
  end

  test "should show meas_final" do
    get :show, id: @meas_final
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meas_final
    assert_response :success
  end

  test "should update meas_final" do
    put :update, id: @meas_final, meas_final: { belt: @meas_final.belt, chest: @meas_final.chest, crotch: @meas_final.crotch, customer_id: @meas_final.customer_id, hip: @meas_final.hip, jacket_length: @meas_final.jacket_length, knee: @meas_final.knee, neck: @meas_final.neck, pants_length: @meas_final.pants_length, shoulder_width: @meas_final.shoulder_width, sleeve_length: @meas_final.sleeve_length, sleeve_width: @meas_final.sleeve_width, thigh: @meas_final.thigh, waist: @meas_final.waist, wrist: @meas_final.wrist }
    assert_redirected_to meas_final_path(assigns(:meas_final))
  end

  test "should destroy meas_final" do
    assert_difference('MeasFinal.count', -1) do
      delete :destroy, id: @meas_final
    end

    assert_redirected_to meas_finals_path
  end
end
