require 'test_helper'

class AmericanUnitsControllerTest < ActionController::TestCase
  setup do
    @american_unit = american_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:american_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create american_unit" do
    assert_difference('AmericanUnit.count') do
      post :create, american_unit: { content: @american_unit.content, description: @american_unit.description, designation: @american_unit.designation, name: @american_unit.name }
    end

    assert_redirected_to american_unit_path(assigns(:american_unit))
  end

  test "should show american_unit" do
    get :show, id: @american_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @american_unit
    assert_response :success
  end

  test "should update american_unit" do
    patch :update, id: @american_unit, american_unit: { content: @american_unit.content, description: @american_unit.description, designation: @american_unit.designation, name: @american_unit.name }
    assert_redirected_to american_unit_path(assigns(:american_unit))
  end

  test "should destroy american_unit" do
    assert_difference('AmericanUnit.count', -1) do
      delete :destroy, id: @american_unit
    end

    assert_redirected_to american_units_path
  end
end
