require 'test_helper'

class GermanArmorsControllerTest < ActionController::TestCase
  setup do
    @german_armor = german_armors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:german_armors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create german_armor" do
    assert_difference('GermanArmor.count') do
      post :create, german_armor: { description: @german_armor.description, designation: @german_armor.designation, name: @german_armor.name, numbers_built: @german_armor.numbers_built }
    end

    assert_redirected_to german_armor_path(assigns(:german_armor))
  end

  test "should show german_armor" do
    get :show, id: @german_armor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @german_armor
    assert_response :success
  end

  test "should update german_armor" do
    patch :update, id: @german_armor, german_armor: { description: @german_armor.description, designation: @german_armor.designation, name: @german_armor.name, numbers_built: @german_armor.numbers_built }
    assert_redirected_to german_armor_path(assigns(:german_armor))
  end

  test "should destroy german_armor" do
    assert_difference('GermanArmor.count', -1) do
      delete :destroy, id: @german_armor
    end

    assert_redirected_to german_armors_path
  end
end
