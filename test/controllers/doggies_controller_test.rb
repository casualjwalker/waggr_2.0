require 'test_helper'

class DoggiesControllerTest < ActionController::TestCase
  setup do
    @doggy = doggies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doggies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doggy" do
    assert_difference('Doggy.count') do
      post :create, doggy: { FunFact: @doggy.FunFact, age: @doggy.age, breed: @doggy.breed, name: @doggy.name, temperment: @doggy.temperment }
    end

    assert_redirected_to doggy_path(assigns(:doggy))
  end

  test "should show doggy" do
    get :show, id: @doggy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doggy
    assert_response :success
  end

  test "should update doggy" do
    patch :update, id: @doggy, doggy: { FunFact: @doggy.FunFact, age: @doggy.age, breed: @doggy.breed, name: @doggy.name, temperment: @doggy.temperment }
    assert_redirected_to doggy_path(assigns(:doggy))
  end

  test "should destroy doggy" do
    assert_difference('Doggy.count', -1) do
      delete :destroy, id: @doggy
    end

    assert_redirected_to doggies_path
  end
end
