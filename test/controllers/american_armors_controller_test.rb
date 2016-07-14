require 'test_helper'

class AmericanArmorsControllerTest < ActionController::TestCase
  setup do
    @american_armor = american_armors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:american_armors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create american_armor" do
    assert_difference('AmericanArmor.count') do
      post :create, american_armor: { content: @american_armor.content, description: @american_armor.description, designation: @american_armor.designation, name: @american_armor.name, numbers_built: @american_armor.numbers_built }
    end

    assert_redirected_to american_armor_path(assigns(:american_armor))
  end

  test "should show american_armor" do
    get :show, id: @american_armor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @american_armor
    assert_response :success
  end

  test "should update american_armor" do
    patch :update, id: @american_armor, american_armor: { content: @american_armor.content, description: @american_armor.description, designation: @american_armor.designation, name: @american_armor.name, numbers_built: @american_armor.numbers_built }
    assert_redirected_to american_armor_path(assigns(:american_armor))
  end

  test "should destroy american_armor" do
    assert_difference('AmericanArmor.count', -1) do
      delete :destroy, id: @american_armor
    end

    assert_redirected_to american_armors_path
  end
end
