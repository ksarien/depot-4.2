require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @update = {
      title:       'Lorem Ipsum',
      description: 'Wibbles are fun!',
      image_url:   '/images/lorem.png',
      price:       19.95
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select 'h1', 'Listing products'
    assert_select '#main img.list_image', 5
    assert_select '#main .list_actions', 5
    assert_select '#main .list_description', 5
    assert_select '#main table tr', 5
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product.to_param, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    product = products(:one)
    assert_difference('Product.count', -1) do
      delete :destroy, id: product
    end

    assert_redirected_to products_path
  end
end
