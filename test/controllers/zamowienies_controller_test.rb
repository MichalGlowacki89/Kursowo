require 'test_helper'

class ZamowieniesControllerTest < ActionController::TestCase
  setup do
    @zamowieny = zamowienies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zamowienies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zamowieny" do
    assert_difference('Zamowienie.count') do
      post :create, zamowieny: { uzytkownik_id: @zamowieny.uzytkownik_id, wartosc_w_zl: @zamowieny.wartosc_w_zl }
    end

    assert_redirected_to zamowieny_path(assigns(:zamowieny))
  end

  test "should show zamowieny" do
    get :show, id: @zamowieny
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zamowieny
    assert_response :success
  end

  test "should update zamowieny" do
    patch :update, id: @zamowieny, zamowieny: { uzytkownik_id: @zamowieny.uzytkownik_id, wartosc_w_zl: @zamowieny.wartosc_w_zl }
    assert_redirected_to zamowieny_path(assigns(:zamowieny))
  end

  test "should destroy zamowieny" do
    assert_difference('Zamowienie.count', -1) do
      delete :destroy, id: @zamowieny
    end

    assert_redirected_to zamowienies_path
  end
end
