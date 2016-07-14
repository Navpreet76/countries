require 'test_helper'

class GermanUnitsControllerTest < ActionController::TestCase
  setup do
    @german_unit = german_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:german_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create german_unit" do
    assert_difference('GermanUnit.count') do
      post :create, german_unit: { content: @german_unit.content, description: @german_unit.description, designation: @german_unit.designation, name: @german_unit.name }
    end

    assert_redirected_to german_unit_path(assigns(:german_unit))
  end

  test "should show german_unit" do
    get :show, id: @german_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @german_unit
    assert_response :success
  end

  test "should update german_unit" do
    patch :update, id: @german_unit, german_unit: { content: @german_unit.content, description: @german_unit.description, designation: @german_unit.designation, name: @german_unit.name }
    assert_redirected_to german_unit_path(assigns(:german_unit))
  end

  test "should destroy german_unit" do
    assert_difference('GermanUnit.count', -1) do
      delete :destroy, id: @german_unit
    end

    assert_redirected_to german_units_path
  end
end
