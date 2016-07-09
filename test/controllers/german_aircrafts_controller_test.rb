require 'test_helper'

class GermanAircraftsControllerTest < ActionController::TestCase
  setup do
    @german_aircraft = german_aircrafts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:german_aircrafts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create german_aircraft" do
    assert_difference('GermanAircraft.count') do
      post :create, german_aircraft: { content: @german_aircraft.content, description: @german_aircraft.description, designation: @german_aircraft.designation, name: @german_aircraft.name }
    end

    assert_redirected_to german_aircraft_path(assigns(:german_aircraft))
  end

  test "should show german_aircraft" do
    get :show, id: @german_aircraft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @german_aircraft
    assert_response :success
  end

  test "should update german_aircraft" do
    patch :update, id: @german_aircraft, german_aircraft: { content: @german_aircraft.content, description: @german_aircraft.description, designation: @german_aircraft.designation, name: @german_aircraft.name }
    assert_redirected_to german_aircraft_path(assigns(:german_aircraft))
  end

  test "should destroy german_aircraft" do
    assert_difference('GermanAircraft.count', -1) do
      delete :destroy, id: @german_aircraft
    end

    assert_redirected_to german_aircrafts_path
  end
end
