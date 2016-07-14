require 'test_helper'

class AmericanNavyVesselsControllerTest < ActionController::TestCase
  setup do
    @american_navy_vessel = american_navy_vessels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:american_navy_vessels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create american_navy_vessel" do
    assert_difference('AmericanNavyVessel.count') do
      post :create, american_navy_vessel: { content: @american_navy_vessel.content, description: @american_navy_vessel.description, designation: @american_navy_vessel.designation, name: @american_navy_vessel.name }
    end

    assert_redirected_to american_navy_vessel_path(assigns(:american_navy_vessel))
  end

  test "should show american_navy_vessel" do
    get :show, id: @american_navy_vessel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @american_navy_vessel
    assert_response :success
  end

  test "should update american_navy_vessel" do
    patch :update, id: @american_navy_vessel, american_navy_vessel: { content: @american_navy_vessel.content, description: @american_navy_vessel.description, designation: @american_navy_vessel.designation, name: @american_navy_vessel.name }
    assert_redirected_to american_navy_vessel_path(assigns(:american_navy_vessel))
  end

  test "should destroy american_navy_vessel" do
    assert_difference('AmericanNavyVessel.count', -1) do
      delete :destroy, id: @american_navy_vessel
    end

    assert_redirected_to american_navy_vessels_path
  end
end
