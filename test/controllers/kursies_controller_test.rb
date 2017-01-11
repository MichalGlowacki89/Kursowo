require 'test_helper'

class KursiesControllerTest < ActionController::TestCase
  setup do
    @kursy = kursies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kursies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kursy" do
    assert_difference('Kursy.count') do
      post :create, kursy: { cena_w_zl: @kursy.cena_w_zl, nazwa: @kursy.nazwa }
    end

    assert_redirected_to kursy_path(assigns(:kursy))
  end

  test "should show kursy" do
    get :show, id: @kursy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kursy
    assert_response :success
  end

  test "should update kursy" do
    patch :update, id: @kursy, kursy: { cena_w_zl: @kursy.cena_w_zl, nazwa: @kursy.nazwa }
    assert_redirected_to kursy_path(assigns(:kursy))
  end

  test "should destroy kursy" do
    assert_difference('Kursy.count', -1) do
      delete :destroy, id: @kursy
    end

    assert_redirected_to kursies_path
  end
end
