require 'test_helper'

class EndroitsControllerTest < ActionController::TestCase
  setup do
    @endroit = endroits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endroits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create endroit" do
    assert_difference('Endroit.count') do
      post :create, endroit: @endroit.attributes
    end

    assert_redirected_to endroit_path(assigns(:endroit))
  end

  test "should show endroit" do
    get :show, id: @endroit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @endroit
    assert_response :success
  end

  test "should update endroit" do
    put :update, id: @endroit, endroit: @endroit.attributes
    assert_redirected_to endroit_path(assigns(:endroit))
  end

  test "should destroy endroit" do
    assert_difference('Endroit.count', -1) do
      delete :destroy, id: @endroit
    end

    assert_redirected_to endroits_path
  end
end
