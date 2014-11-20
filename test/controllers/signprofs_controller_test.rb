require 'test_helper'

class SignprofsControllerTest < ActionController::TestCase
  setup do
    @signprof = signprofs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signprofs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signprof" do
    assert_difference('Signprof.count') do
      post :create, signprof: { address: @signprof.address, email: @signprof.email, name: @signprof.name, phone: @signprof.phone, qualification: @signprof.qualification }
    end

    assert_redirected_to signprof_path(assigns(:signprof))
  end

  test "should show signprof" do
    get :show, id: @signprof
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @signprof
    assert_response :success
  end

  test "should update signprof" do
    patch :update, id: @signprof, signprof: { address: @signprof.address, email: @signprof.email, name: @signprof.name, phone: @signprof.phone, qualification: @signprof.qualification }
    assert_redirected_to signprof_path(assigns(:signprof))
  end

  test "should destroy signprof" do
    assert_difference('Signprof.count', -1) do
      delete :destroy, id: @signprof
    end

    assert_redirected_to signprofs_path
  end
end
