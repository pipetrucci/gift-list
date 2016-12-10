require 'test_helper'

class RegalosControllerTest < ActionController::TestCase
  setup do
    @regalo = regalos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regalos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regalo" do
    assert_difference('Regalo.count') do
      post :create, regalo: { description: @regalo.description, img-product: @regalo.img-product, link: @regalo.link, name: @regalo.name, price-max: @regalo.price-max, price-min: @regalo.price-min, state: @regalo.state, user: @regalo.user }
    end

    assert_redirected_to regalo_path(assigns(:regalo))
  end

  test "should show regalo" do
    get :show, id: @regalo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regalo
    assert_response :success
  end

  test "should update regalo" do
    patch :update, id: @regalo, regalo: { description: @regalo.description, img-product: @regalo.img-product, link: @regalo.link, name: @regalo.name, price-max: @regalo.price-max, price-min: @regalo.price-min, state: @regalo.state, user: @regalo.user }
    assert_redirected_to regalo_path(assigns(:regalo))
  end

  test "should destroy regalo" do
    assert_difference('Regalo.count', -1) do
      delete :destroy, id: @regalo
    end

    assert_redirected_to regalos_path
  end
end
