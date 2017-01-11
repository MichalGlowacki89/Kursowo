require 'test_helper'

class UzytkowniksControllerTest < ActionController::TestCase
  setup do
    @uzytkownik = uzytkowniks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uzytkowniks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uzytkownik" do
    assert_difference('Uzytkownik.count') do
      post :create, uzytkownik: { email: @uzytkownik.email, imie: @uzytkownik.imie, login: @uzytkownik.login, nazwisko: @uzytkownik.nazwisko, password_digest: @uzytkownik.password_digest }
    end

    assert_redirected_to uzytkownik_path(assigns(:uzytkownik))
  end

  test "should show uzytkownik" do
    get :show, id: @uzytkownik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uzytkownik
    assert_response :success
  end

  test "should update uzytkownik" do
    patch :update, id: @uzytkownik, uzytkownik: { email: @uzytkownik.email, imie: @uzytkownik.imie, login: @uzytkownik.login, nazwisko: @uzytkownik.nazwisko, password_digest: @uzytkownik.password_digest }
    assert_redirected_to uzytkownik_path(assigns(:uzytkownik))
  end

  test "should destroy uzytkownik" do
    assert_difference('Uzytkownik.count', -1) do
      delete :destroy, id: @uzytkownik
    end

    assert_redirected_to uzytkowniks_path
  end
end
