require 'test_helper'

class KursyZamowieniesControllerTest < ActionController::TestCase
  setup do
    @kursy_zamowieny = kursy_zamowienies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kursy_zamowienies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kursy_zamowieny" do
    assert_difference('KursyZamowienie.count') do
      post :create, kursy_zamowieny: { kursy_id: @kursy_zamowieny.kursy_id, zamowienie_id: @kursy_zamowieny.zamowienie_id }
    end

    assert_redirected_to kursy_zamowieny_path(assigns(:kursy_zamowieny))
  end

  test "should show kursy_zamowieny" do
    get :show, id: @kursy_zamowieny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kursy_zamowieny
    assert_response :success
  end

  test "should update kursy_zamowieny" do
    patch :update, id: @kursy_zamowieny, kursy_zamowieny: { kursy_id: @kursy_zamowieny.kursy_id, zamowienie_id: @kursy_zamowieny.zamowienie_id }
    assert_redirected_to kursy_zamowieny_path(assigns(:kursy_zamowieny))
  end

  test "should destroy kursy_zamowieny" do
    assert_difference('KursyZamowienie.count', -1) do
      delete :destroy, id: @kursy_zamowieny
    end

    assert_redirected_to kursy_zamowienies_path
  end
end
