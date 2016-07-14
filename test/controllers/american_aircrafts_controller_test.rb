require 'test_helper'

class AmericanAircraftsControllerTest < ActionController::TestCase
  setup do
    @american_aircraft = american_aircrafts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:american_aircrafts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create american_aircraft" do
    assert_difference('AmericanAircraft.count') do
      post :create, american_aircraft: { content: @american_aircraft.content, description: @american_aircraft.description, designation: @american_aircraft.designation, name: @american_aircraft.name }
    end

    assert_redirected_to american_aircraft_path(assigns(:american_aircraft))
  end

  test "should show american_aircraft" do
    get :show, id: @american_aircraft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @american_aircraft
    assert_response :success
  end

  test "should update american_aircraft" do
    patch :update, id: @american_aircraft, american_aircraft: { content: @american_aircraft.content, description: @american_aircraft.description, designation: @american_aircraft.designation, name: @american_aircraft.name }
    assert_redirected_to american_aircraft_path(assigns(:american_aircraft))
  end

  test "should destroy american_aircraft" do
    assert_difference('AmericanAircraft.count', -1) do
      delete :destroy, id: @american_aircraft
    end

    assert_redirected_to american_aircrafts_path
  end
end
