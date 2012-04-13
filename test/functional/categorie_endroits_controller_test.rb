require 'test_helper'

class CategorieEndroitsControllerTest < ActionController::TestCase
  setup do
    @categorie_endroit = categorie_endroits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie_endroits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie_endroit" do
    assert_difference('CategorieEndroit.count') do
      post :create, categorie_endroit: @categorie_endroit.attributes
    end

    assert_redirected_to categorie_endroit_path(assigns(:categorie_endroit))
  end

  test "should show categorie_endroit" do
    get :show, id: @categorie_endroit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie_endroit
    assert_response :success
  end

  test "should update categorie_endroit" do
    put :update, id: @categorie_endroit, categorie_endroit: @categorie_endroit.attributes
    assert_redirected_to categorie_endroit_path(assigns(:categorie_endroit))
  end

  test "should destroy categorie_endroit" do
    assert_difference('CategorieEndroit.count', -1) do
      delete :destroy, id: @categorie_endroit
    end

    assert_redirected_to categorie_endroits_path
  end
end
