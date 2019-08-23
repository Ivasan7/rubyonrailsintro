require 'test_helper'

class TodoOtemsControllerTest < ActionController::TestCase
  setup do
    @todo_otem = todo_otems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todo_otems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo_otem" do
    assert_difference('TodoOtem.count') do
      post :create, todo_otem: { completed: @todo_otem.completed, description: @todo_otem.description, due_date: @todo_otem.due_date, title: @todo_otem.title }
    end

    assert_redirected_to todo_otem_path(assigns(:todo_otem))
  end

  test "should show todo_otem" do
    get :show, id: @todo_otem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todo_otem
    assert_response :success
  end

  test "should update todo_otem" do
    patch :update, id: @todo_otem, todo_otem: { completed: @todo_otem.completed, description: @todo_otem.description, due_date: @todo_otem.due_date, title: @todo_otem.title }
    assert_redirected_to todo_otem_path(assigns(:todo_otem))
  end

  test "should destroy todo_otem" do
    assert_difference('TodoOtem.count', -1) do
      delete :destroy, id: @todo_otem
    end

    assert_redirected_to todo_otems_path
  end
end
