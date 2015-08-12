require 'test_helper'

class ExpandedsControllerTest < ActionController::TestCase
  setup do
    @expanded = expandeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expandeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expanded" do
    assert_difference('Expanded.count') do
      post :create, expanded: { content: @expanded.content, identifier: @expanded.identifier, parent: @expanded.parent, position: @expanded.position }
    end

    assert_redirected_to expanded_path(assigns(:expanded))
  end

  test "should show expanded" do
    get :show, id: @expanded
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expanded
    assert_response :success
  end

  test "should update expanded" do
    patch :update, id: @expanded, expanded: { content: @expanded.content, identifier: @expanded.identifier, parent: @expanded.parent, position: @expanded.position }
    assert_redirected_to expanded_path(assigns(:expanded))
  end

  test "should destroy expanded" do
    assert_difference('Expanded.count', -1) do
      delete :destroy, id: @expanded
    end

    assert_redirected_to expandeds_path
  end
end
