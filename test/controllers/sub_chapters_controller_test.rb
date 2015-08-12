require 'test_helper'

class SubChaptersControllerTest < ActionController::TestCase
  setup do
    @sub_chapter = sub_chapters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_chapters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_chapter" do
    assert_difference('SubChapter.count') do
      post :create, sub_chapter: { content: @sub_chapter.content, identifier: @sub_chapter.identifier, parent: @sub_chapter.parent, position: @sub_chapter.position }
    end

    assert_redirected_to sub_chapter_path(assigns(:sub_chapter))
  end

  test "should show sub_chapter" do
    get :show, id: @sub_chapter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_chapter
    assert_response :success
  end

  test "should update sub_chapter" do
    patch :update, id: @sub_chapter, sub_chapter: { content: @sub_chapter.content, identifier: @sub_chapter.identifier, parent: @sub_chapter.parent, position: @sub_chapter.position }
    assert_redirected_to sub_chapter_path(assigns(:sub_chapter))
  end

  test "should destroy sub_chapter" do
    assert_difference('SubChapter.count', -1) do
      delete :destroy, id: @sub_chapter
    end

    assert_redirected_to sub_chapters_path
  end
end
