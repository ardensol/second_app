require 'test_helper'

class MeasInitialsControllerTest < ActionController::TestCase
  setup do
    @meas_initial = meas_initials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meas_initials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meas_initial" do
    assert_difference('MeasInitial.count') do
      post :create, meas_initial: { belt_i: @meas_initial.belt_i, chest_i: @meas_initial.chest_i, crotch_i: @meas_initial.crotch_i, customer_id: @meas_initial.customer_id, hip_i: @meas_initial.hip_i, jacket_length_i: @meas_initial.jacket_length_i, knee_i: @meas_initial.knee_i, neck_i: @meas_initial.neck_i, pants_length_i: @meas_initial.pants_length_i, shoulder_width_i: @meas_initial.shoulder_width_i, sleeve_length_i: @meas_initial.sleeve_length_i, sleeve_width_i: @meas_initial.sleeve_width_i, thigh_i: @meas_initial.thigh_i, waist_i: @meas_initial.waist_i, wrist_i: @meas_initial.wrist_i }
    end

    assert_redirected_to meas_initial_path(assigns(:meas_initial))
  end

  test "should show meas_initial" do
    get :show, id: @meas_initial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meas_initial
    assert_response :success
  end

  test "should update meas_initial" do
    put :update, id: @meas_initial, meas_initial: { belt_i: @meas_initial.belt_i, chest_i: @meas_initial.chest_i, crotch_i: @meas_initial.crotch_i, customer_id: @meas_initial.customer_id, hip_i: @meas_initial.hip_i, jacket_length_i: @meas_initial.jacket_length_i, knee_i: @meas_initial.knee_i, neck_i: @meas_initial.neck_i, pants_length_i: @meas_initial.pants_length_i, shoulder_width_i: @meas_initial.shoulder_width_i, sleeve_length_i: @meas_initial.sleeve_length_i, sleeve_width_i: @meas_initial.sleeve_width_i, thigh_i: @meas_initial.thigh_i, waist_i: @meas_initial.waist_i, wrist_i: @meas_initial.wrist_i }
    assert_redirected_to meas_initial_path(assigns(:meas_initial))
  end

  test "should destroy meas_initial" do
    assert_difference('MeasInitial.count', -1) do
      delete :destroy, id: @meas_initial
    end

    assert_redirected_to meas_initials_path
  end
end
