require 'test_helper'

class NavyVesselsControllerTest < ActionController::TestCase
  setup do
    @navy_vessel = navy_vessels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:navy_vessels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create navy_vessel" do
    assert_difference('NavyVessel.count') do
      post :create, navy_vessel: { designation: @navy_vessel.designation, name: @navy_vessel.name, strength: @navy_vessel.strength }
    end

    assert_redirected_to navy_vessel_path(assigns(:navy_vessel))
  end

  test "should show navy_vessel" do
    get :show, id: @navy_vessel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @navy_vessel
    assert_response :success
  end

  test "should update navy_vessel" do
    patch :update, id: @navy_vessel, navy_vessel: { designation: @navy_vessel.designation, name: @navy_vessel.name, strength: @navy_vessel.strength }
    assert_redirected_to navy_vessel_path(assigns(:navy_vessel))
  end

  test "should destroy navy_vessel" do
    assert_difference('NavyVessel.count', -1) do
      delete :destroy, id: @navy_vessel
    end

    assert_redirected_to navy_vessels_path
  end
end
