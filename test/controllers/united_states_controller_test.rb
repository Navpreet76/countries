require 'test_helper'

class UnitedStatesControllerTest < ActionController::TestCase
  setup do
    @united_state = united_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:united_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create united_state" do
    assert_difference('UnitedState.count') do
      post :create, united_state: { description: @united_state.description, name: @united_state.name }
    end

    assert_redirected_to united_state_path(assigns(:united_state))
  end

  test "should show united_state" do
    get :show, id: @united_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @united_state
    assert_response :success
  end

  test "should update united_state" do
    patch :update, id: @united_state, united_state: { description: @united_state.description, name: @united_state.name }
    assert_redirected_to united_state_path(assigns(:united_state))
  end

  test "should destroy united_state" do
    assert_difference('UnitedState.count', -1) do
      delete :destroy, id: @united_state
    end

    assert_redirected_to united_states_path
  end
end
