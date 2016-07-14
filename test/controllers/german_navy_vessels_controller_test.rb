require 'test_helper'

class GermanNavyVesselsControllerTest < ActionController::TestCase
  setup do
    @german_navy_vessel = german_navy_vessels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:german_navy_vessels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create german_navy_vessel" do
    assert_difference('GermanNavyVessel.count') do
      post :create, german_navy_vessel: { content: @german_navy_vessel.content, description: @german_navy_vessel.description, designation: @german_navy_vessel.designation, name: @german_navy_vessel.name }
    end

    assert_redirected_to german_navy_vessel_path(assigns(:german_navy_vessel))
  end

  test "should show german_navy_vessel" do
    get :show, id: @german_navy_vessel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @german_navy_vessel
    assert_response :success
  end

  test "should update german_navy_vessel" do
    patch :update, id: @german_navy_vessel, german_navy_vessel: { content: @german_navy_vessel.content, description: @german_navy_vessel.description, designation: @german_navy_vessel.designation, name: @german_navy_vessel.name }
    assert_redirected_to german_navy_vessel_path(assigns(:german_navy_vessel))
  end

  test "should destroy german_navy_vessel" do
    assert_difference('GermanNavyVessel.count', -1) do
      delete :destroy, id: @german_navy_vessel
    end

    assert_redirected_to german_navy_vessels_path
  end
end
