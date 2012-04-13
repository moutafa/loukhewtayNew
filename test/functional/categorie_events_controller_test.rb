require 'test_helper'

class CategorieEventsControllerTest < ActionController::TestCase
  setup do
    @categorie_event = categorie_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie_event" do
    assert_difference('CategorieEvent.count') do
      post :create, categorie_event: @categorie_event.attributes
    end

    assert_redirected_to categorie_event_path(assigns(:categorie_event))
  end

  test "should show categorie_event" do
    get :show, id: @categorie_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie_event
    assert_response :success
  end

  test "should update categorie_event" do
    put :update, id: @categorie_event, categorie_event: @categorie_event.attributes
    assert_redirected_to categorie_event_path(assigns(:categorie_event))
  end

  test "should destroy categorie_event" do
    assert_difference('CategorieEvent.count', -1) do
      delete :destroy, id: @categorie_event
    end

    assert_redirected_to categorie_events_path
  end
end
